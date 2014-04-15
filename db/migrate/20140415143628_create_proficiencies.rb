class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.belongs_to :user, index: true
      t.belongs_to :skill, index: true
      t.integer :level

      t.timestamps
    end
  end
end
