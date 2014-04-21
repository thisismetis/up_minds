class HomesController < ApplicationController
  before_action :goto_dashboard, if: :signed_in?

  def show
    @user1 = User.all.sample
    @user2 = User.all.sample
    @user3 = User.all.sample
  end

  private

  def goto_dashboard
    redirect_to dashboard_path
  end

end
