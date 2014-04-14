class UsersController < ApplicationController
  def show
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
      :personal_site,
      :has_profile
      )
  end

end