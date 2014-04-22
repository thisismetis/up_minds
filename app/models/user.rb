class User < ActiveRecord::Base
  include Clearance::User
  has_many :proficiencies, dependent: :destroy
  has_many :skills, through: :proficiencies
  has_many :projects, dependent: :destroy

  def name
    if first_name.present? && last_name.present?
      "#{first_name} #{last_name}"
     else
       email
     end
   end
end
