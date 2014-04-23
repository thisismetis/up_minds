class MindsController < ApplicationController
  def show
    @user = Mind.find(params[:id])
    @projects = @user.projects
    render "users/show.html.erb"
  end
end
