class AddForeignKeysToPokeathlonAndPokedexGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pokeathlon_stat_names, :pokeathlon_stats, column: :pokeathlon_stat_id
    add_foreign_key :pokeathlon_stat_names, :languages, column: :local_language_id

    add_foreign_key :pokedex_proses, :pokedexes, column: :pokedex_id 
    add_foreign_key :pokedex_proses, :languages, column: :local_language_id 

    add_foreign_key :pokedex_version_groups, :pokedexes, column: :pokedex_id
    add_foreign_key :pokedex_version_groups, :version_groups, column: :version_group_id

    add_foreign_key :pokedexes, :regions, column: :region_id
  end
end
