class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.string :identifier
      t.integer :generation_id
      t.boolean :is_main_series

      t.timestamps
    end
  end
end
