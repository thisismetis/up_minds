class SamplesController < ApplicationController
  def index
    @project = find_project
    @sample = Sample.new
    @samples = @project.samples
  end

  def create
    project = find_project
    sample = project.samples.create(sample_params)
    redirect_to project_samples_path
  end

  def destroy
    project = find_project
    sample = project.samples.find(params[:id])
    sample.destroy
    redirect_to project_samples_path
  end

  private

  def sample_params
    params.require(:sample).permit(
      :name,
      :description,
      :url
    )
  end

  def find_project
    current_user.projects.find(params[:project_id])
  end
end
