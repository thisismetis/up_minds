class UserSearcher
  def initialize(query)
    @query = query
  end

  def results
    matching_users.order('created_at DESC')
  end

  private

  attr_reader :query

  def matching_users
    if @query
      User.where(
        "first_name ilike :query \
         OR last_name ilike :query \
         OR city ilike :query \
         OR state ilike :query",
        query: fuzzy_query
      )
    else
      User.none
    end
  end

  def fuzzy_query
    "%#{query}%"
  end
end
