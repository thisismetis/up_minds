class Proficiency < ActiveRecord::Base

  belongs_to :user
  belongs_to :skill

  LEVELS = {
    "Familiar With" => "1",
    "Level 2" => "2",
    "Level 3" => "3",
    "Level 4" => "4",
    "Wizard" => "5"
  }

end
