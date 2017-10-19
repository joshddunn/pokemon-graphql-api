class CreatePokemonFormPokeathlonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_form_pokeathlon_stats do |t|
      t.integer :pokemon_form_id
      t.integer :pokeathlon_stat_id
      t.integer :minimum_stat
      t.integer :base_stat
      t.integer :maximum_stat

      t.timestamps
    end
  end
end
