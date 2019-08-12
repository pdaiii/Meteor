class AddCountToStory < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :count, :integer
  end
end