class FeaturedProjectsController < ApplicationController
  before_action :authorize

  def create
    @project = find_project
    @project.feature
    @project.save
    render :change
  end

  def destroy
    @project = find_project
    @project.unfeature
    @project.save
    render :change
  end

  private
  def find_project
    current_user.projects.find(params[:id])
  end
end
