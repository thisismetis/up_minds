class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects.featured
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    find_or_create_profile
    if current_user.employer?
      redirect_to dashboard_path
    elsif current_user.mind?
      redirect_to mind_path(current_user)
    else
      redirect_to type_path
    end
  end

  private

  def profile_class
    "#{current_user.type}Profile".constantize
  end

  def find_or_create_profile
    if current_user.type.present?
      profile_class.find_or_create_by("#{current_user.type.downcase}_id" => current_user.id)
    end
  end

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
