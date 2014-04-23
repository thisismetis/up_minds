class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @developers = UserSearcher.new(@query).results.order(params[:sort])
  end
end
