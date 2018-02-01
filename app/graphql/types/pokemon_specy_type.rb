Types::PokemonSpecyType = GraphQL::ObjectType.define do
  name "PokemonSpecy"
  description "Contains information about pokemon species."

  field :id, types.ID, "Returns the id of the pokemon species.", property: :id
  field :identifier, types.String, "Returns the identifier of the pokemon species.", property: :identifier
  field :generation, Types::GenerationType, "Returns information about the generation of the pokemon species.", property: :generation
  field :evolvesFromSpecies, Types::PokemonSpecyType, "Returns informaiton about the pokemon species that this pokemon species evolves from.", property: :pokemon_specy
  field :evolutionChain, Types::EvolutionChainType, "Returns information about the evolution chain of this pokemon species.", property: :evolution_chain
  field :color, Types::PokemonColorType, "Returns information about the color of this pokemon species.", property: :pokemon_color
  field :shape, Types::PokemonShapeType, "Returns informaiton about the shape of this pokemon species.", property: :pokemon_shape
  field :habitat, Types::PokemonHabitatType, "Returns information about the habitat of this pokemon species' habitat.", property: :pokemon_habitat
  field :genderRate, types.Int, "Returns the gender rate of this pokemon species.", property: :gender_rate
  field :captureRate, types.Int, "Returns the capture rate of this pokemon species.", property: :capture_rate
  field :baseHappiness, types.Int, "Returns the base happiness of this pokemon species.", property: :base_happiness
  field :isBaby, types.Boolean, "Returns whether this pokemon species is classified as a baby.", property: :is_baby
  field :hatchCounter, types.Int, "Returns the hatch counter for this pokemon species.", property: :hatch_counter
  field :hasGenderDifferences, types.Boolean, "Returns whether this pokemon species has gender differences.", property: :has_gender_differences
  field :growthRate, Types::GrowthRateType, "Returns information about the growth rate of this pokemon species.", property: :growth_rate
  field :formsSwitchable, types.Boolean, "Returns whether the forms of this pokemon species are switchable.", property: :forms_switchable
  field :order, types.Int, "Returns the order of this pokemon species.", property: :order
  field :conquestOrder, types.Int, "Returns the conquest order of this pokemon species.", property: :conquest_order

  field :pokemons, types[Types::PokemonType], "Returns an array of pokemon that are of this pokemon species.", property: :pokemons
  field :evolvesIntoSpecies, types[Types::PokemonSpecyType], "Returns an array of pokemon species that this pokemon species can evolve into.", property: :pokemon_species
  field :palParks, types[Types::PalParkType], "Returns an array of pal parks this pokemon species can be found in.", property: :pal_parks
  field :pokemonDexNumbers, types[Types::PokemonDexNumberType], "Returns an array of pokedex information for this pokemon species.", property: :pokemon_dex_numbers
  field :pokemonEggGroups, types[Types::PokemonEggGroupType], "Returns an array of egg group information this pokemon species belongs to.", property: :pokemon_egg_groups
  field :evolvedSpecies, types[Types::PokemonEvolutionType], "Returns an array of the evolved species of this pokemon species.", property: :evolved_species
  field :partySpecies, types[Types::PokemonEvolutionType], "Returns an array of the party species of this pokemon species.", property: :party_species
  field :tradeSpecies, types[Types::PokemonEvolutionType], "Returns an array of the trade species of this pokemon species.", property: :trade_species
  field :pokemonSpeciesFlavorSummaries, types[Types::PokemonSpeciesFlavorSummaryType], "Returns an array of information about the flavor summaries for this pokemon species.", property: :pokemon_species_flavor_summaries
  field :pokemonSpeciesFlavorTexts, types[Types::PokemonSpeciesFlavorTextType], "Returns an array of information about flavor text for this pokemon species.", property: :pokemon_species_flavor_texts
  field :pokemonSpeciesNames, types[Types::PokemonSpeciesNameType], "Returns an array of informaiton about names for this pokemon species.", property: :pokemon_species_names
  field :pokemonSpeciesProses, types[Types::PokemonSpeciesProseType], "Returns an array of informaiton about pokemon species prose.", property: :pokemon_species_proses
  field :conquestMaxLinks, types[Types::ConquestMaxLinkType], "Returns an array of information about conquest max links for this pokemon species.", property: :conquest_max_links
  field :conquestPokemonAbilities, types[Types::ConquestPokemonAbilityType], "Returns an array of information about conquest abilities for this pokemon species.", property: :conquest_pokemon_abilities
  field :conquestPokemonEvolutions, types[Types::ConquestPokemonEvolutionType], "Returns an array of information about conquest evolutions for this pokemon species.", property: :conquest_pokemon_evolutions
  field :conquestPokemonMoves, types[Types::ConquestPokemonMoveType], "Returns an array of information about conquest moves for this pokemon species.", property: :conquest_pokemon_moves
  field :conquestPokemonStats, types[Types::ConquestPokemonStatType], "Returns an array of information about conquest stats for this pokemon species.", property: :conquest_pokemon_stats
  field :conquestTransformationPokemons, types[Types::ConquestTransformationPokemonType], "Returns an array of information about conquest transformations for this pokemon species.", property: :conquest_transformation_pokemons
end
