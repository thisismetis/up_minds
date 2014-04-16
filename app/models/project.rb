class Project < ActiveRecord::Base
  belongs_to :user

  def featured?
    featured
  end

  def feature!
    self.featured = true
  end

  def unfeature!
    self.featured = false
  end
end
