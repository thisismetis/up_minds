class CreateDeveloperProfiles < ActiveRecord::Migration
  def change
    create_table :developer_profiles do |t|
      t.string :github
      t.string :twitter
      t.string :linked_in
      t.text :bio
      t.string :blog
      t.string :personal_site

      t.timestamps
    end
  end
end
