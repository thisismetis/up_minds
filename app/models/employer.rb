class Employer < User
  has_one :employer_profile
  accepts_nested_attributes_for :employer_profile
end
