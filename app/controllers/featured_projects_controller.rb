class FeaturedProjectsController < ApplicationController
  before_action :authorize

  def create
    @project = current_user.projects.find(params[:id])
    @project.feature
    @project.save
    redirect_to projects_path
  end

  def destroy
    @project = current_user.projects.find(params[:id])
    @project.unfeature
    @project.save
    redirect_to projects_path
  end
end
