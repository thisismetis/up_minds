class RenameDevelopertoMind < ActiveRecord::Migration
  def change
    rename_table :developer_profiles, :mind_profiles
  end
end
