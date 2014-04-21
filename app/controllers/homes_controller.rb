class HomesController < ApplicationController
  before_action :goto_dashboard, if: :signed_in?

  def show
    @user = User.order("RANDOM()").limit(3)
  end

  private

  def goto_dashboard
    redirect_to dashboard_path
  end

end
