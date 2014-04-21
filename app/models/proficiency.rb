class Proficiency < ActiveRecord::Base

  belongs_to :user
  belongs_to :skill

  delegate :name, to: :skill, prefix: true

  validates :user_id,
    uniqueness: { scope: :skill_id }

  LEVELS = {
    "Exposure to" => "1",
    "Limited Experience" => "2",
    "Intermediate Experience" => "3",
    "Advanced Experience" => "4",
    "Wizard" => "5"
  }

end
