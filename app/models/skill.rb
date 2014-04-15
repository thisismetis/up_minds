class Skill < ActiveRecord::Base
  has_many :proficiencies
end
