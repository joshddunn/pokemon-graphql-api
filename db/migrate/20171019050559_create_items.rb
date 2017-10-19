class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :identifier
      t.integer :category_id
      t.integer :cost
      t.integer :fling_power
      t.integer :fling_effect_id

      t.timestamps
    end
  end
end
