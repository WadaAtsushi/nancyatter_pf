class CreateMenburs < ActiveRecord::Migration[6.1]
  def change
    create_table :menburs do |t|
      t.integer :nancyatterapp_id
      t.integer :user_id
      t.string :nickname
      t.string :profile_image
      t.string :profile
      t.integer :del_flag

      t.timestamps
    end
  end
end
