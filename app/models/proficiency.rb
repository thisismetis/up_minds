class Proficiency < ActiveRecord::Base

  belongs_to :user
  belongs_to :skill

  delegate :name, to: :skill, prefix: true

  validates :user_id,
    uniqueness: { scope: :skill_id }

  validates :skill_id, presence: true
  validates :level, presence: true

  LEVELS = {
    "Some Exposure" => "1",
    "Limited Experience" => "2",
    "Intermediate Experience" => "3",
    "Advanced Experience" => "4",
    "Wizard" => "5"
  }

  def label
    LEVELS.key(level.to_s)
  end
end
