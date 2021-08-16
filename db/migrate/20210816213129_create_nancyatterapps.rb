class CreateNancyatterapps < ActiveRecord::Migration[6.1]
  def change
    create_table :nancyatterapps do |t|
      t.string :app_name
      t.string :main_text
      t.string :introduction
      t.string :loure
      t.string :app_image
      t.string :app_color
      t.integer :user_id
      t.integer :appcategory_id
      t.string :feature_like
      t.string :feature_comment
      t.string :feature_category
      t.string :feature_image

      t.timestamps
    end
  end
end
