class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @results = UserSearcher.new(@query).results
  end
end
