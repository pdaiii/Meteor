class CreateResponseClaps < ActiveRecord::Migration[5.2]
  def change
    create_table :response_claps do |t|
      t.integer :response_id, null: false
      t.integer :clapper_id, null: false
      t.timestamps
    end
    add_index :response_claps, [:response_id, :clapper_id], unique: true
  end
end
