class ProjectsController < ApplicationController  
  def index
    @user = current_user
    @projects = @user.projects
  end

  def new
    @user = current_user
    @project = Project.new
  end

  def create
    @user = current_user
    @project = current_user.projects.create(project_params)
    redirect_to projects_path
  end

  def edit
    @user = current_user
    @project = find_project
  end

  def update
    @user = current_user
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
