class DeleteHasProfileFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :has_profile
  end
end
