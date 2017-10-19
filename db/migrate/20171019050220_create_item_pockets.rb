class CreateItemPockets < ActiveRecord::Migration[5.1]
  def change
    create_table :item_pockets do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
