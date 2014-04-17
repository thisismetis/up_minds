class ProjectsController < ApplicationController
  def index
    @user = current_user
    @projects = @user.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.create(project_params)
    redirect_to projects_path
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def update
    @project = current_user.projects.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(
      :name,
      :url,
      :body,
      :featured
    )
  end
end
