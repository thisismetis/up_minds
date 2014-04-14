class User < ActiveRecord::Base
include Clearance::User


  def has_profile?
    has_profile
  end
end
