class SearchesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def show
    @query = params[:search][:query]
    @results = UserSearcher.new(@query).results.order(params[:sort])
  end
end
