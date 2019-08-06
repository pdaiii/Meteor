class UpdateStoryTxt < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :body
    add_column :stories, :body, :text
  end
end