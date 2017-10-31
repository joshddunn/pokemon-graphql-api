class CreateConquestTransformationPokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_transformation_pokemons do |t|
      t.integer :transformation_id
      t.integer :pokemon_species_id

      t.timestamps
    end
  end
end
