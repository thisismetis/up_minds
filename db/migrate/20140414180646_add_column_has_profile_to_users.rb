class AddColumnHasProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :has_profile, :boolean, default: false
  end
end
