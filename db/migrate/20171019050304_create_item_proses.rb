class CreateItemProses < ActiveRecord::Migration[5.1]
  def change
    create_table :item_proses do |t|
      t.integer :item_id
      t.integer :local_language_id
      t.string :short_effect
      t.string :effect

      t.timestamps
    end
  end
end
