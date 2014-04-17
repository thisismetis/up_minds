class UserSearcher
  def initialize(query)
    @query = query
  end

  def results
    matching_users
  end

  private

  attr_reader :query

  def matching_users
    if @query
       matched_by_profile + matched_by_skills
    else
      User.none
    end
  end

  def matched_by_profile
    User.where(
    "first_name ilike :query \
     OR last_name ilike :query \
     OR city ilike :query \
     OR state ilike :query",
    query: fuzzy_query
    )
  end

  def matched_by_skills
     User.joins(:proficiencies)
    .joins(:skills)
    .where("name ilike ?", fuzzy_query)
    .uniq
  end

  def fuzzy_query
    "%#{query}%"
  end
end
