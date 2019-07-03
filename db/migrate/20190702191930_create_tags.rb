class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :description, null: false
      t.integer :story_id, null: false
      t.timestamps
    end
    add_index :tags, :story_id, unique: true
  end
end
