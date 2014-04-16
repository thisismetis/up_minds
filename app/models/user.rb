class User < ActiveRecord::Base
  include Clearance::User
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  has_many :projects

  searchable do
    text :first_name, :last_name, :city, :state, :bio, :email
    text :telephone
  end
end
