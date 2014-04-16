class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  searchable do
    text :first_name,:last_name, :city, :state, :bio, :user_email
    integer :telephone
  end
end
