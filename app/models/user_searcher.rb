class UserSearcher
  def initialize(query)
    @query = query
  end

  def users
    User.where(
      "first_name ilike ? OR last_name ilike ? OR city ilike ? OR state ilike ?",
      fuzzy_query, fuzzy_query, fuzzy_query, fuzzy_query
    )
  end

  private

  attr_reader :query

  def fuzzy_query
    "%#{query}%"
  end
end
