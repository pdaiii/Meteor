class RemoveImageColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :image
  end
end
