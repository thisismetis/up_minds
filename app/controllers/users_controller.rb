class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects.find_by(featured: true) 
  end

  def index
    @search = User.search do
      fulltext params[:search]
    end
    @users = @search.results
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :telephone,
      :city,
      :state,
      :bio,
      :github,
      :twitter,
      :linked_in,
      :dribbble,
      :blog,
      :personal_site
      )
  end

end
