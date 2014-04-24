class Employer < User
  has_one :profile, class_name: 'EmployerProfile'
  accepts_nested_attributes_for :profile

  delegate :company_name, :company_url, to: :profile
end
