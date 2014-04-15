class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.text :body
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
