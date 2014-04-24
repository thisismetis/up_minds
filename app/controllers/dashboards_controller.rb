class DashboardsController < ApplicationController
  def show
    @user = current_user
    @watched_users = current_user.watched_users
    @watched_users_old = WatchingRelationship.where(watcher_id: current_user.id)
    @watchers = current_user.watchers
    @watchers_old = WatchingRelationship.where(watched_user_id: current_user.id)
  end
end
