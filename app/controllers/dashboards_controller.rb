class DashboardsController < ApplicationController
  def show
    @user = current_user
    @watched_users = current_user.watched_users
    @watchers = current_user.watchers
  end
end
