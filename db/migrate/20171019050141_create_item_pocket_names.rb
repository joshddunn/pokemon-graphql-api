class CreateItemPocketNames < ActiveRecord::Migration[5.1]
  def change
    create_table :item_pocket_names do |t|
      t.integer :item_pocket_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
