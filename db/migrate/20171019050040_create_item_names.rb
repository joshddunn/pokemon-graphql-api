class CreateItemNames < ActiveRecord::Migration[5.1]
  def change
    create_table :item_names do |t|
      t.integer :item_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
