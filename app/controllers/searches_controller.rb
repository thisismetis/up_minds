class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    if @query
      @results = find_users(@query).order("created_at DESC")
    else
      @results = User.all.order('created_at DESC')
    end
  end

  private
  def find_users(search)
    user_searcher = UserSearcher.new(search)
    user_searcher.users
  end
end
