class CreateConquestPokemonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_pokemon_stats do |t|
      t.integer :pokemon_species_id
      t.integer :conquest_stat_id
      t.integer :base_stat

      t.timestamps
    end
  end
end
