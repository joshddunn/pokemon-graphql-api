Types::VersionGroupType = GraphQL::ObjectType.define do
  name "VersionGroup"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :order, types.Int, "", property: :order

  field :abilityChangelogs, types[Types::AbilityChangelogType], "", property: :ability_changelogs
  field :abilityFlavorTexts, types[Types::AbilityFlavorTextType], "", property: :ability_flavor_texts
  field :encounterSlots, types[Types::EncounterSlotType], "", property: :encounter_slots
  field :itemFlavorTexts, types[Types::ItemFlavorTextType], "", property: :item_flavor_texts
  field :machines, types[Types::MachineType], "", property: :machines
  field :moveChangelogs, types[Types::MoveChangelogType], "", property: :move_changelogs
  field :moveEffectChangelogs, types[Types::MoveEffectChangelogType], "", property: :move_effect_changelogs
  field :moveFlavorTexts, types[Types::MoveFlavorTextType], "", property: :move_flavor_texts
  field :pokedexVersionGroups, types[Types::PokedexVersionGroupType], "", property: :pokedex_version_groups
  field :pokemonForms, types[Types::PokemonFormType], "", property: :pokemon_forms
  field :pokemonMoves, types[Types::PokemonMoveType], "", property: :pokemon_moves
  field :versionGroupPokemonMoveMethods, types[Types::VersionGroupPokemonMoveMethodType], "", property: :version_group_pokemon_move_methods
  field :versionGroupRegions, types[Types::VersionGroupRegionType], "", property: :version_group_regions
  field :versions, types[Types::VersionType], "", property: :versions
end
