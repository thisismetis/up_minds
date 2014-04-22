class RemoveDevRelatedItemsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :github
    remove_column :users, :twitter
    remove_column :users, :linked_in
    remove_column :users, :bio
    remove_column :users, :blog
    remove_column :users, :personal_site
    remove_column :users, :dribbble

    add_column :users, :type, :string
  end
end
