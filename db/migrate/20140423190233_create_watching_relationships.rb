class CreateWatchingRelationships < ActiveRecord::Migration
  def change
    create_table :watching_relationships do |t|
      t.belongs_to :watcher, index: true
      t.belongs_to :watched_user, index: true

      t.timestamps
    end
  end
end
