class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.create(project_params)
    redirect_to current_user
  end

  private

  def project_params
    params.require(:project).permit(
      :name,
      :url,
      :body
    )
  end
end
