class ModifyMigrations < ActiveRecord::Migration[5.2]
  def change
    remove_index :responses, [:author_id, :story_id]
    add_index :responses, :author_id
    add_index :responses, :story_id
  end
end
