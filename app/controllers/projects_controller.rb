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
    redirect_to current_user
  end

  def edit
  end

  def update
    @project = current_user.project.find(params[:id])
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
