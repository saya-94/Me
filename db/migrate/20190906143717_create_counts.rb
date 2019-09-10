class CreateCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :counts do |t|
      t.integer :end_user_id, null: false, default: ""
      t.integer :post_id, null: false, default: ""

      t.timestamps
    end
  end
end
