class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :identifier
      t.integer :species_id
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.integer :order
      t.boolean :is_default

      t.timestamps
    end
  end
end
