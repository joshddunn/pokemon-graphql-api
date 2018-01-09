Types::PokemonSpecyType = GraphQL::ObjectType.define do
  name "PokemonSpecy"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :evolvesFromSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :evolutionChain, Types::EvolutionChainType, "", property: :evolution_chain
  field :color, Types::PokemonColorType, "", property: :pokemon_color
  field :shape, Types::PokemonShapeType, "", property: :pokemon_shape
  field :habitat, Types::PokemonHabitatType, "", property: :pokemon_habitat
  field :genderRate, types.Int, "", property: :gender_rate
  field :captureRate, types.Int, "", property: :capture_rate
  field :baseHappiness, types.Int, "", property: :base_happiness
  field :isBaby, types.Boolean, "", property: :is_baby
  field :hatchCounter, types.Int, "", property: :hatch_counter
  field :hasGenderDifferences, types.Boolean, "", property: :has_gender_differences
  field :growthRate, Types::GrowthRateType, "", property: :growth_rate
  field :formsSwitchable, types.Boolean, "", property: :forms_switchable
  field :order, types.Int, "", property: :order
  field :conquestOrder, types.Int, "", property: :conquest_order

  field :pokemons, types[Types::PokemonType], "", property: :pokemons
  field :evolvesIntoSpecies, types[Types::PokemonSpecyType], "", property: :pokemon_species
  field :palParks, types[Types::PalParkType], "", property: :pal_parks
  field :pokemonDexNumbers, types[Types::PokemonDexNumberType], "", property: :pokemon_dex_numbers
  field :pokemonEggGroups, types[Types::PokemonEggGroupType], "", property: :pokemon_egg_groups
  field :evolvedSpecies, types[Types::PokemonEvolutionType], "", property: :evolved_species
  field :partySpecies, types[Types::PokemonEvolutionType], "", property: :party_species
  field :tradeSpecies, types[Types::PokemonEvolutionType], "", property: :trade_species
  field :pokemonSpeciesFlavorSummaries, types[Types::PokemonSpeciesFlavorSummaryType], "", property: :pokemon_species_flavor_summaries
  field :pokemonSpeciesFlavorTexts, types[Types::PokemonSpeciesFlavorTextType], "", property: :pokemon_species_flavor_texts
  field :pokemonSpeciesNames, types[Types::PokemonSpeciesNameType], "", property: :pokemon_species_names
  field :pokemonSpeciesProses, types[Types::PokemonSpeciesProseType], "", property: :pokemon_species_proses
  field :conquestMaxLinks, types[Types::ConquestMaxLinkType], "", property: :conquest_max_links
  field :conquestPokemonAbilities, types[Types::ConquestPokemonAbilityType], "", property: :conquest_pokemon_abilities
  field :conquestPokemonEvolutions, types[Types::ConquestPokemonEvolutionType], "", property: :conquest_pokemon_evolutions
  field :conquestPokemonMoves, types[Types::ConquestPokemonMoveType], "", property: :conquest_pokemon_moves
  field :conquestPokemonStats, types[Types::ConquestPokemonStatType], "", property: :conquest_pokemon_stats
  field :conquestTransformationPokemons, types[Types::ConquestTransformationPokemonType], "", property: :conquest_transformation_pokemons
end
