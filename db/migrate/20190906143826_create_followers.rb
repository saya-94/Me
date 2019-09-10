class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.integer :end_user_id, null: false, default: ""
      t.integer :follower_id, null: false, default: ""

      t.timestamps
    end
  end
end
