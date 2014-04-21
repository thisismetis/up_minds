class UserSearcher
  def initialize(query)
    @query = query
  end

  def results
    find_users
  end

  private

  attr_reader :query

  def find_users
    if @query
      find_matching_users
    else
      User.none
    end
  end

  def find_matching_users
    if skill_level_query?
      find_by_level
    else
      find_by_text
    end
  end

  def find_by_text
    User.joins(:proficiencies).joins(:skills).where(
      "first_name ilike :query \
      OR last_name ilike :query \
      OR city ilike :query \
      OR state ilike :query \
      OR name ilike :query", query:fuzzy_query
    )
  end

  def skill_level_query?
    @query =~ /\A\d+\z/
  end

  def find_by_level
    User.joins(:proficiencies).where('level >= ?', query)
  end

  def fuzzy_query
    "%#{query}%"
  end
end
