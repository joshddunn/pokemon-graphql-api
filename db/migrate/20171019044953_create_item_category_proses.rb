class CreateItemCategoryProses < ActiveRecord::Migration[5.1]
  def change
    create_table :item_category_proses do |t|
      t.integer :item_category_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
