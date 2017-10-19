class CreateItemFlingEffects < ActiveRecord::Migration[5.1]
  def change
    create_table :item_fling_effects do |t|
      t.string :name

      t.timestamps
    end
  end
end
