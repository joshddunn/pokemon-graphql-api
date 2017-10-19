class CreateItemCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :item_categories do |t|
      t.integer :pocket_id
      t.string :identifier

      t.timestamps
    end
  end
end
