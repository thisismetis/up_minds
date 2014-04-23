class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @developers = DeveloperSearcher.new(@query).results.order(params[:sort])
  end
end
