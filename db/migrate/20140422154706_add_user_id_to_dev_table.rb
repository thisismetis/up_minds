class AddUserIdToDevTable < ActiveRecord::Migration
  def change
    add_column :developer_profiles, :user_id, :integer
  end
end
