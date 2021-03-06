class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :end_user_id, null: false, default: ""
      t.integer :genre_id, null: false, default: ""
      t.string :image_id, null: false, default: ""
      t.text :comment, null: false, default: ""
      t.integer :sex_post, null: false, default: ""
      t.string :style_id, null: false, default: ""

      t.timestamps
    end
  end
end
