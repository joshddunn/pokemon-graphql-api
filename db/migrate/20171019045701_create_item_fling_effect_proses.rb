class CreateItemFlingEffectProses < ActiveRecord::Migration[5.1]
  def change
    create_table :item_fling_effect_proses do |t|
      t.integer :item_fling_effect_id
      t.integer :local_language_id
      t.string :effect

      t.timestamps
    end
  end
end
