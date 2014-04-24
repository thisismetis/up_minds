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

  def name
    if first_name.present? && last_name.present?
      "#{first_name} #{last_name}"
     else
       email
     end
   end

  def no_type?
    %w(Employer Mind).exclude?(type)
  end

  def employer?
    type  == 'Employer'
  end

  def mind?
    type == 'Mind'
  end
end
