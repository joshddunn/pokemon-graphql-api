class AddForeignKeysToPokemonGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pokemon_abilities, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_abilities, :abilities, column: :ability_id

    add_foreign_key :pokemon_color_names, :pokemon_colors, column: :pokemon_color_id 
    add_foreign_key :pokemon_color_names, :languages, column: :local_language_id 

    add_foreign_key :pokemon_dex_numbers, :pokemon_species, column: :species_id
    add_foreign_key :pokemon_dex_numbers, :pokedexes, column: :pokedex_id

    add_foreign_key :pokemon_egg_groups, :pokemon_species, column: :species_id
    add_foreign_key :pokemon_egg_groups, :egg_groups, column: :egg_group_id

    add_foreign_key :pokemon_evolutions, :evolution_triggers, column: :evolution_trigger_id
    add_foreign_key :pokemon_evolutions, :genders, column: :gender_id
    add_foreign_key :pokemon_evolutions, :items, column: :held_item_id
    add_foreign_key :pokemon_evolutions, :items, column: :trigger_item_id
    add_foreign_key :pokemon_evolutions, :locations, column: :location_id
    add_foreign_key :pokemon_evolutions, :moves, column: :known_move_id
    add_foreign_key :pokemon_evolutions, :pokemon_species, column: :evolved_species_id
    add_foreign_key :pokemon_evolutions, :pokemon_species, column: :party_species_id
    add_foreign_key :pokemon_evolutions, :pokemon_species, column: :trade_species_id
    add_foreign_key :pokemon_evolutions, :types, column: :known_move_type_id
    add_foreign_key :pokemon_evolutions, :types, column: :party_type_id

    add_foreign_key :pokemon_form_generations, :pokemon_forms, column: :pokemon_form_id
    add_foreign_key :pokemon_form_generations, :generations, column: :generation_id

    add_foreign_key :pokemon_form_names, :pokemon_forms, column: :pokemon_form_id
    add_foreign_key :pokemon_form_names, :languages, column: :local_language_id

    add_foreign_key :pokemon_form_pokeathlon_stats, :pokemon_forms, column: :pokemon_form_id
    add_foreign_key :pokemon_form_pokeathlon_stats, :pokeathlon_stats, column: :pokeathlon_stat_id

    add_foreign_key :pokemon_forms, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_forms, :version_groups, column: :introduced_in_version_group_id

    add_foreign_key :pokemon_game_indices, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_game_indices, :versions, column: :version_id

    add_foreign_key :pokemon_habitat_names, :pokemon_habitats, column: :pokemon_habitat_id
    add_foreign_key :pokemon_habitat_names, :languages, column: :local_language_id

    add_foreign_key :pokemon_items, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_items, :versions, column: :version_id
    add_foreign_key :pokemon_items, :items, column: :item_id

    add_foreign_key :pokemon_move_method_proses, :pokemon_move_methods, column: :pokemon_move_method_id
    add_foreign_key :pokemon_move_method_proses, :languages, column: :local_language_id

    add_foreign_key :pokemon_moves, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_moves, :version_groups, column: :version_group_id
    add_foreign_key :pokemon_moves, :moves, column: :move_id
    add_foreign_key :pokemon_moves, :pokemon_move_methods, column: :pokemon_move_method_id

    add_foreign_key :pokemon_shape_proses, :pokemon_shapes, column: :pokemon_shape_id
    add_foreign_key :pokemon_shape_proses, :languages, column: :local_language_id

    add_foreign_key :pokemon_species, :generations, column: :generation_id
    # add_foreign_key :pokemon_species, :pokemon_species, column: :evolves_from_species_id
    add_foreign_key :pokemon_species, :evolution_chains, column: :evolution_chain_id
    # add_foreign_key :pokemon_species, :pokemon_colors, column: :color_id
    add_foreign_key :pokemon_species, :pokemon_shapes, column: :shape_id
    add_foreign_key :pokemon_species, :pokemon_habitats, column: :habitat_id
    add_foreign_key :pokemon_species, :growth_rates, column: :growth_rate_id

    add_foreign_key :pokemon_species_flavor_summaries, :pokemon_species, column: :pokemon_species_id
    add_foreign_key :pokemon_species_flavor_summaries, :languages, column: :local_language_id

    add_foreign_key :pokemon_species_flavor_texts, :pokemon_species, column: :species_id
    add_foreign_key :pokemon_species_flavor_texts, :versions, column: :version_id
    add_foreign_key :pokemon_species_flavor_texts, :languages, column: :language_id

    add_foreign_key :pokemon_species_names, :pokemon_species, column: :pokemon_species_id 
    add_foreign_key :pokemon_species_names, :languages, column: :local_language_id 

    add_foreign_key :pokemon_species_proses, :pokemon_species, column: :pokemon_species_id
    add_foreign_key :pokemon_species_proses, :languages, column: :local_language_id

    add_foreign_key :pokemon_stats, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_stats, :stats, column: :stat_id

    add_foreign_key :pokemon_types, :pokemons, column: :pokemon_id
    add_foreign_key :pokemon_types, :types, column: :type_id
  end
end
