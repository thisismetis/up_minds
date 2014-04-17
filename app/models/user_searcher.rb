class UserSearcher
  def initialize(query)
    @query = query
  end

  def matching_users
    User.where(
      "first_name ilike :query OR last_name ilike :query OR city ilike :query OR state ilike :query",
      query: fuzzy_query
    )
  end

  def results
    if @query
      matching_users.order('created_at DESC')
    else
      []
    end
  end

  private

  attr_reader :query

  def fuzzy_query
    "%#{query}%"
  end
end
