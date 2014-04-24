class Employer < User
  has_one :employer_profile
  accepts_nested_attributes_for :employer_profile
  delegate :company_name, :company_url, to: :employer_profile
end
