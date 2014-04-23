class SearchesController < ApplicationController
  def show
    @query = params[:search][:query]
    @minds = MindSearcher.new(@query).results.order(params[:sort])
  end
end
