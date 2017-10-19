class CreateItemFlavorSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :item_flavor_summaries do |t|
      t.integer :item_id
      t.integer :local_language_id
      t.string :flavor_summary

      t.timestamps
    end
  end
end
