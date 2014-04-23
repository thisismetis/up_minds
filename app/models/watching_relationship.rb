class WatchingRelationship < ActiveRecord::Base
  belongs_to :watcher, class_name: "User"
  belongs_to :watched_user, class_name: "User"

  validates :watcher_id, uniqueness: { scope: :watched_user_id }

  validate :cannot_watch_yourself

  private

  def cannot_watch_yourself
    if watched_user_id == watcher_id
      errors.add( :base, "You cannot watch yourself.")
    end
  end
end
