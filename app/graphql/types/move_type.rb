Types::MoveType = GraphQL::ObjectType.define do
  name "Move"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :type, Types::TypeType, "", property: :type
  field :power, !types.Int, "", property: :power
  field :pp, !types.Int, "", property: :pp
  field :accuracy, !types.Int, "", property: :accuracy
  field :priority, !types.Int, "", property: :priority
  field :target, Types::MoveTargetType, "", property: :move_target
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class
  field :effect, Types::MoveEffectType, "", property: :move_effect
  field :effectChance, !types.Int, "", property: :effect_chance
  field :contestType, Types::ContestTypeType, "", property: :contest_type
  field :contestEffect, Types::ContestEffectType, "", property: :contest_effect
  field :superContestEffect, Types::SuperContestEffectType, "", property: :super_contest_effect

  field :contestComboFirstMoves, !types[Types::ContestComboType], "", property: :contest_combo_first_moves
  field :contestComboSecondMoves, !types[Types::ContestComboType], "", property: :contest_combo_second_moves
  field :machines, !types[Types::MachineType], "", property: :machines
  field :moveChangelogs, !types[Types::MoveChangelogType], "", property: :move_changelogs
  field :moveFlagMaps, !types[Types::MoveFlagMapType], "", property: :move_flag_maps
  field :moveFlavorSummaries, !types[Types::MoveFlavorSummaryType], "", property: :move_flavor_summaries
  field :moveFlavorTexts, !types[Types::MoveFlavorTextType], "", property: :move_flavor_texts
  field :moveMeta, !types[Types::MoveMetumType], "", property: :move_meta
  field :moveMetaStatChanges, !types[Types::MoveMetaStatChangeType], "", property: :move_meta_stat_changes
  field :moveNames, !types[Types::MoveNameType], "", property: :move_names
  field :pokemonEvolutions, !types[Types::PokemonEvolutionType], "", property: :pokemon_evolutions
  field :pokemonMoves, !types[Types::PokemonMoveType], "", property: :pokemon_moves
  field :superContestComboFirstMoves, !types[Types::SuperContestComboType], "", property: :super_contest_combo_first_moves
  field :superContestComboSecondMoves, !types[Types::SuperContestComboType], "", property: :super_contest_combo_second_moves
  field :conquestMoveData, !types[Types::ConquestMoveDatumType], "", property: :conquest_move_data
  field :conquestPokemonMoves, !types[Types::ConquestPokemonMoveType], "", property: :conquest_pokemon_moves
end
