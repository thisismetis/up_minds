class User < ActiveRecord::Base
  include Clearance::User
  has_many :proficiencies, dependent: :destroy
  has_many :skills, through: :proficiencies
  has_many :projects, dependent: :destroy
  has_many :samples, through: :projects, dependent: :destroy

  TYPES = {
    "Employer" => "Employer",
    "Job Seeker" => "Mind",
  }

  has_many :watched_user_relationships,
    foreign_key: :watcher_id,
    class_name: "WatchingRelationship"

  has_many :watched_users,
    through: :watched_user_relationships

  has_many :watcher_relationships,
    foreign_key: :watched_user_id,
    class_name: "WatchingRelationship"

  has_many :watchers,
    through: :watcher_relationships

  def watch(user)
    watched_users << user
  end

  def name
    if first_name.present? && last_name.present?
      "#{first_name} #{last_name}"
     else
       email
     end
   end
end
