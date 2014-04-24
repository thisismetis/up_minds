class AddLinksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github, :string
    add_column :users, :twitter, :string
    add_column :users, :linked_in, :string
  end
end
