class CreateConquestPokemonEvolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_pokemon_evolutions do |t|
      t.integer :evolved_species_id
      t.integer :required_stat_id
      t.integer :minimum_stat
      t.integer :minimum_link
      t.integer :kingdom_id
      t.integer :warrior_gender_id
      t.integer :item_id
      t.boolean :recruiting_ko_required

      t.timestamps
    end
  end
end
