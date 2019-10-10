class AddClapsToResponse < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :story_id
    remove_column :responses, :author_id
    remove_column :responses, :created_at
    remove_column :responses, :updated_at
    remove_column :responses, :claps
    add_column :responses, :count, :integer
    add_column :responses, :story_id, :integer, null: false
    add_column :responses, :author_id, :integer, null: false
    add_column :responses, :created_at, :datetime, null: false
    add_column :responses, :updated_at, :datetime, null: false
  end
end
