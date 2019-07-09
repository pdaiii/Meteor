class AddImageToStory < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :created_at
    remove_column :stories, :updated_at

    add_column :stories, :image, :string, null: false
    add_column :stories, :created_at, :datetime, null: false
    add_column :stories, :updated_at, :datetime, null: false
  end
end
