class CreatePokedexes < ActiveRecord::Migration[5.1]
  def change
    create_table :pokedexes do |t|
      t.integer :region_id
      t.string :identifier
      t.boolean :is_main_series

      t.timestamps
    end
  end
end
