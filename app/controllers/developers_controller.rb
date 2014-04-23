class DevelopersController < ApplicationController
  def show
    @user = Developer.find(params[:id])
    @projects = @user.projects
    render "users/show.html.erb"
  end
end
