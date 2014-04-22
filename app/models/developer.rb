class Developer < User
  has_one :developer_profile
  # accepts_nested_attributes_for :employer_profile
end
