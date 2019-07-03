class CreateStoryClaps < ActiveRecord::Migration[5.2]
  def change
    create_table :story_claps do |t|
      t.integer :story_id, null: false
      t.integer :clapper_id, null: false
      t.timestamps
    end
    add_index :story_claps, [:story_id, :clapper_id], unique: true
  end
end