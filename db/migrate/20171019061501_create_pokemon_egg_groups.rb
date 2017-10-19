class CreatePokemonEggGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_egg_groups do |t|
      t.integer :species_id
      t.integer :egg_group_id

      t.timestamps
    end
  end
end
