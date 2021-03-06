class WatchingRelationshipsController < ApplicationController
  def create
    watched_user = User.find(params[:id])
    current_user.watch(watched_user)
    redirect_to watched_user
  end

  def destroy
    watched_user = User.find(params[:id])
    current_user.unwatch(watched_user)
    redirect_to watched_user
  end
end
