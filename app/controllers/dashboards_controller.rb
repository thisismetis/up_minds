class DashboardsController < ApplicationController
  def show
    @user = current_user
    @watched_users = WatchingRelationship.where(watcher_id: current_user.id)
    @watchers = WatchingRelationship.where(watched_user_id: current_user.id)
  end
end
