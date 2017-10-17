class CreatePokemonSpecies < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_species do |t|
      t.string :identifier
      t.integer :generation_id
      t.integer :evolves_from_species_id
      t.integer :evolution_chain_id
      t.integer :color_id
      t.integer :shape_id
      t.integer :habitat_id
      t.integer :gender_rate
      t.integer :capture_rate
      t.integer :base_happiness
      t.boolean :is_baby
      t.integer :hatch_counter
      t.boolean :has_gender_differences
      t.integer :growth_rate_id
      t.boolean :forms_switchable
      t.integer :order
      t.integer :conquest_order

      t.timestamps
    end
  end
end
