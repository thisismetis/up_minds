class Mind < User
  has_one :mind_profile
  accepts_nested_attributes_for :mind_profile
  delegate :github, :twitter, :linked_in, :bio,:personal_site, :blog, to: :mind_profile
end
