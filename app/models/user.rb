class User < ActiveRecord::Base
  include Clearance::User
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  has_many :projects
end
