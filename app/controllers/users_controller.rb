class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects.featured
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    if current_user.employer?
      redirect_to dashboard_path
    elsif current_user.mind?
      redirect_to mind_path(@user)
    else
      redirect_to type_path
    end
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
      :personal_site,
      :type
      )
  end

end
