class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :menbur_id
      t.integer :nancyatterapp_id
      t.integer :postcategory_id
      t.string :post_image
      t.integer :del_flag

      t.timestamps
    end
  end
end
