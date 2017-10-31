class AddForeignKeysToConquestGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :conquest_episode_names, :conquest_episodes, column: :episode_id
    add_foreign_key :conquest_episode_names, :languages, column: :local_language_id

    add_foreign_key :conquest_episode_warriors, :conquest_episodes, column: :episode_id
    add_foreign_key :conquest_episode_warriors, :conquest_warriors, column: :warrior_id

    add_foreign_key :conquest_kingdom_names, :conquest_kingdoms, column: :kingdom_id
    add_foreign_key :conquest_kingdom_names, :languages, column: :local_language_id

    add_foreign_key :conquest_kingdoms, :types, column: :type_id

    add_foreign_key :conquest_max_links, :conquest_warrior_ranks, column: :warrior_rank_id
    add_foreign_key :conquest_max_links, :pokemon_species, column: :pokemon_species_id

    add_foreign_key :conquest_move_data, :moves, column: :move_id
    add_foreign_key :conquest_move_data, :conquest_move_effects, column: :effect_id
    add_foreign_key :conquest_move_data, :conquest_move_ranges, column: :range_id
    add_foreign_key :conquest_move_data, :conquest_move_displacements, column: :displacement_id

    add_foreign_key :conquest_move_displacement_proses, :conquest_move_displacements, column: :move_displacement_id
    add_foreign_key :conquest_move_displacement_proses, :languages, column: :local_language_id

    add_foreign_key :conquest_move_effect_proses, :conquest_move_effects, column: :conquest_move_effect_id
    add_foreign_key :conquest_move_effect_proses, :languages, column: :local_language_id

    add_foreign_key :conquest_move_range_proses, :conquest_move_ranges, column: :conquest_move_range_id
    add_foreign_key :conquest_move_range_proses, :languages, column: :local_language_id

    add_foreign_key :conquest_pokemon_abilities, :pokemon_species, column: :pokemon_species_id
    add_foreign_key :conquest_pokemon_abilities, :abilities, column: :ability_id

    add_foreign_key :conquest_pokemon_evolutions, :pokemon_species, column: :evolved_species_id
    add_foreign_key :conquest_pokemon_evolutions, :stats, column: :required_stat_id
    add_foreign_key :conquest_pokemon_evolutions, :conquest_kingdoms, column: :kingdom_id
    add_foreign_key :conquest_pokemon_evolutions, :genders, column: :warrior_gender_id
    add_foreign_key :conquest_pokemon_evolutions, :items, column: :item_id

    add_foreign_key :conquest_pokemon_moves, :pokemon_species, column: :pokemon_species_id
    add_foreign_key :conquest_pokemon_moves, :moves, column: :move_id

    add_foreign_key :conquest_pokemon_stats, :pokemon_species, column: :pokemon_species_id
    add_foreign_key :conquest_pokemon_stats, :conquest_stats, column: :conquest_stat_id

    add_foreign_key :conquest_stat_names, :conquest_stats, column: :conquest_stat_id
    add_foreign_key :conquest_stat_names, :languages, column: :local_language_id

    add_foreign_key :conquest_transformation_pokemons, :conquest_warrior_ranks, column: :transformation_id
    add_foreign_key :conquest_transformation_pokemons, :pokemon_species, column: :pokemon_species_id

    add_foreign_key :conquest_transformation_warriors, :conquest_warrior_ranks, column: :transformation_id
    add_foreign_key :conquest_transformation_warriors, :conquest_warriors, column: :present_warrior_id

    add_foreign_key :conquest_warrior_names, :conquest_warriors, column: :warrior_id
    add_foreign_key :conquest_warrior_names, :languages, column: :local_language_id

    add_foreign_key :conquest_warrior_rank_stat_maps, :conquest_warrior_ranks, column: :warrior_rank_id
    add_foreign_key :conquest_warrior_rank_stat_maps, :conquest_warrior_stats, column: :warrior_stat_id

    add_foreign_key :conquest_warrior_ranks, :conquest_warriors, column: :warrior_id
    add_foreign_key :conquest_warrior_ranks, :conquest_warrior_skills, column: :skill_id

    add_foreign_key :conquest_warrior_skill_names, :conquest_warrior_skills, column: :skill_id
    add_foreign_key :conquest_warrior_skill_names, :languages, column: :local_language_id

    add_foreign_key :conquest_warrior_specialties, :conquest_warriors, column: :warrior_id
    add_foreign_key :conquest_warrior_specialties, :types, column: :type_id

    add_foreign_key :conquest_warrior_stat_names, :conquest_warrior_stats, column: :warrior_stat_id
    add_foreign_key :conquest_warrior_stat_names, :languages, column: :local_language_id

    add_foreign_key :conquest_warrior_transformations, :conquest_warrior_ranks, column: :transformed_warrior_rank_id
    add_foreign_key :conquest_warrior_transformations, :conquest_episodes, column: :completed_episode_id
    add_foreign_key :conquest_warrior_transformations, :conquest_episodes, column: :current_episode_id
    add_foreign_key :conquest_warrior_transformations, :conquest_warriors, column: :distant_warrior_id
    add_foreign_key :conquest_warrior_transformations, :types, column: :collection_type_id

    add_foreign_key :conquest_warriors, :genders, column: :gender_id
    add_foreign_key :conquest_warriors, :conquest_warrior_archetypes, column: :archetype_id
  end
end
