class Developer < User
  has_one :developer_profile
  accepts_nested_attributes_for :employer_profile
  delegate :github, :twitter, :linked_in, :bio,:personal_site, :blog, to: :developer_profile

end
