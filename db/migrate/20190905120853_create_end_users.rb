class CreateEndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :end_users do |t|
      t.string :name, null: false, default: ""
      t.string :profile_image_id, null: false, default: ""
      t.string :sex, null: false, default: ""
      t.integer :height, null: false, default: "-1"
      t.integer :age, null: false, default: "-1"
      t.string :email, null: false, default: ""
      t.string :password, null: false, default: ""
      t.text :introduction

      t.timestamps
    end
  end
end
