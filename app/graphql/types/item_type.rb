Types::ItemType = GraphQL::ObjectType.define do
  name "Item"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :category, Types::ItemCategoryType, "", property: :item_category
  field :cost, !types.Int, "", property: :cost
  field :flingPower, !types.Int, "", property: :fling_power
  field :flingEffect, Types::ItemFlingEffectType, "", property: :item_fling_effect

  field :berries, !types[Types::BerryType], "", property: :berries
  field :evolutionChains, !types[Types::EvolutionChainType], "", property: :evolution_chains
  field :itemFlagMaps, !types[Types::ItemFlagMapType], "", property: :item_flag_maps
  field :itemFlavorSummaries, !types[Types::ItemFlavorSummaryType], "", property: :item_flavor_summaries
  field :itemFlavorTexts, !types[Types::ItemFlavorTextType], "", property: :item_flavor_texts
  field :itemGameIndices, !types[Types::ItemGameIndexType], "", property: :item_game_indices
  field :itemNames, !types[Types::ItemNameType], "", property: :item_names
  field :itemProses, !types[Types::ItemProseType], "", property: :item_proses
  field :machines, !types[Types::MachineType], "", property: :machines
  field :heldItems, !types[Types::PokemonEvolutionType], "", property: :held_items
  field :triggerItems, !types[Types::PokemonEvolutionType], "", property: :trigger_items
  field :pokemonItems, !types[Types::PokemonItemType], "", property: :pokemon_items
  field :conquestPokemonEvolutions, !types[Types::ConquestPokemonEvolutionType], "", property: :conquest_pokemon_evolutions
end
