Types::VersionType = GraphQL::ObjectType.define do
  name "Version"
  description ""

  field :id, types.ID, "", property: :id
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :identifier, types.String, "", property: :identifier

  field :encounters, types[Types::EncounterType], "", property: :encounters
  field :locationAreaEncounterRates, types[Types::LocationAreaEncounterRateType], "", property: :location_area_encounter_rates
  field :pokemonGameIndices, types[Types::PokemonGameIndexType], "", property: :pokemon_game_indices
  field :pokemonItems, types[Types::PokemonItemType], "", property: :pokemon_items
  field :pokemonSpeciesFlavorTexts, types[Types::PokemonSpeciesFlavorTextType], "", property: :pokemon_species_flavor_texts
  field :versionNames, types[Types::VersionNameType], "", property: :version_names
end
