class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @results = UserSearcher.new(@query).results.order(params[:sort])
  end
end
