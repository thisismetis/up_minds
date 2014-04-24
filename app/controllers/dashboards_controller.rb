class DashboardsController < ApplicationController
  def show
    @user = current_user
    @random_user = Mind.order("RANDOM()").limit(3)
  end
end
