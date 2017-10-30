Types::GenerationType = GraphQL::ObjectType.define do
  name "Generation"
  description ""

  field :id, !types.ID, "", property: :id
  field :mainRegion, Types::RegionType, "", property: :region
  field :identifier, !types.String, "", property: :identifier

  field :abilities, !types[Types::AbilityType], "", property: :abilities
  field :generationNames, !types[Types::GenerationNameType], "", property: :generation_names
  field :itemGameIndices, !types[Types::ItemGameIndexType], "", property: :item_game_indices
  field :locationGameIndices, !types[Types::LocationGameIndexType], "", property: :location_game_indices
  field :moves, !types[Types::MoveType], "", property: :moves
  field :pokemonFormGenerations, !types[Types::PokemonFormGenerationType], "", property: :pokemon_form_generations
  field :pokemonSpecies, !types[Types::PokemonSpecyType], "", property: :pokemon_species
  field :typeGameIndices, !types[Types::TypeGameIndexType], "", property: :type_game_indices
  field :types, !types[Types::TypeType], "", property: :types
  field :versionGroups, !types[Types::VersionGroupType], "", property: :version_groups
end
