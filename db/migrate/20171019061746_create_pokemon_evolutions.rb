class CreatePokemonEvolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_evolutions do |t|
      t.integer :evolved_species_id
      t.integer :evolution_trigger_id
      t.integer :trigger_item_id
      t.integer :minimum_level
      t.integer :gender_id
      t.integer :location_id
      t.integer :held_item_id
      t.string :time_of_day
      t.integer :known_move_id
      t.integer :known_move_type_id
      t.integer :minimum_happiness
      t.integer :minimum_beauty
      t.integer :minimum_affection
      t.integer :relative_physical_stats
      t.integer :party_species_id
      t.integer :party_type_id
      t.integer :trade_species_id
      t.boolean :needs_overworld_rain
      t.boolean :turn_upside_down

      t.timestamps
    end
  end
end
