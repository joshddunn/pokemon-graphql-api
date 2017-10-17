class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|

      t.string :identifier
      t.references :species, foreign_key: { to_table: :pokemon_species }
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.integer :order
      t.boolean :is_default

      t.timestamps
    end
  end
end
