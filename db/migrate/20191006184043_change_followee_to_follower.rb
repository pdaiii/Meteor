class ChangeFolloweeToFollower < ActiveRecord::Migration[5.2]
  def change
    remove_column :follows, :follower_id
    remove_column :follows, :created_at
    remove_column :follows, :updated_at
    add_column :follows, :follower_id, :integer, null: false
    add_column :follows, :created_at, :datetime, null: false
    add_column :follows, :updated_at, :datetime, null: false
  end
end
