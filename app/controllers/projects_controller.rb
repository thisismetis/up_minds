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
    @project = find_project
  end

  def update
    @project = find_project
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    project = find_project
    project.destroy
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

  def find_project
    current_user.projects.find(params[:id])
  end
end
