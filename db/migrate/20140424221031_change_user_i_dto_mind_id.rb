class ChangeUserIDtoMindId < ActiveRecord::Migration
  def change
    rename_column :employer_profiles, :user_id, :employer_id
    rename_column :mind_profiles, :user_id, :mind_id
  end
end
