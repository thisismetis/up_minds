class DashboardsController < ApplicationController

  def show
    @user = current_user
    @watched_users = current_user.watched_users
    @watchers = current_user.watchers
    @random_user = Mind.order("RANDOM()").limit(3)
  end
end
