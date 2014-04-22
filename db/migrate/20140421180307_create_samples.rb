class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.string :description
      t.string :url
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
