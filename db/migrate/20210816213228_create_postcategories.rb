class CreatePostcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :postcategories do |t|
      t.integer :nancyatterapp_id
      t.string :category_name

      t.timestamps
    end
  end
end
