Types::TypeType = GraphQL::ObjectType.define do
  name "Type"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class

  field :berries, !types[Types::BerryType], "", property: :berries
  field :moveChangelogs, !types[Types::MoveChangelogType], "", property: :move_changelogs
  field :moves, !types[Types::MoveType], "", property: :moves
  field :knownMoveTypes, !types[Types::PokemonEvolutionType], "", property: :known_move_types
  field :partyTypes, !types[Types::PokemonEvolutionType], "", property: :party_types
  field :pokemonTypes, !types[Types::PokemonTypeType], "", property: :pokemon_types
  field :damageTypes, !types[Types::TypeEfficacyType], "", property: :damage_types
  field :targetTypes, !types[Types::TypeEfficacyType], "", property: :target_types
  field :typeGameIndices, !types[Types::TypeGameIndexType], "", property: :type_game_indices
  field :typeNames, !types[Types::TypeNameType], "", property: :type_names
  field :conquestKingdoms, !types[Types::ConquestKingdomType], "", property: :conquest_kingdoms
  field :conquestWarriorSpecialties, !types[Types::ConquestWarriorSpecialtyType], "", property: :conquest_warrior_specialties
  field :conquestWarriorTransformations, !types[Types::ConquestWarriorTransformationType], "", property: :conquest_warrior_transformations
end
