Types::PokemonSpecyType = GraphQL::ObjectType.define do
  name "PokemonSpecy"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :evolvesFromSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :evolutionChain, Types::EvolutionChainType, "", property: :evolution_chain
  field :color, Types::PokemonColorType, "", property: :pokemon_color
  field :shape, Types::PokemonShapeType, "", property: :pokemon_shape
  field :habitat, Types::PokemonHabitatType, "", property: :pokemon_habitat
  field :genderRate, !types.Int, "", property: :gender_rate
  field :captureRate, !types.Int, "", property: :capture_rate
  field :baseHappiness, !types.Int, "", property: :base_happiness
  field :isBaby, !types.Boolean, "", property: :is_baby
  field :hatchCounter, !types.Int, "", property: :hatch_counter
  field :hasGenderDifferences, !types.Boolean, "", property: :has_gender_differences
  field :growthRate, Types::GrowthRateType, "", property: :growth_rate
  field :formsSwitchable, !types.Boolean, "", property: :forms_switchable
  field :order, !types.Int, "", property: :order
  field :conquestOrder, !types.Int, "", property: :conquest_order

  field :species, Types::PokemonSpeciesFlavorTextType, "", property: :pokemon_species_flavor_texts
  field :evolvesFromSpecies, Types::PokemonSpecyType, "", property: :pokemon_species
  field :evolvedSpecies, Types::EvolvedSpecyType, "", property: :evolved_species
  field :partySpecies, Types::PartySpecyType, "", property: :party_species
  field :tradeSpecies, Types::TradeSpecyType, "", property: :trade_species
  field :pokemonSpecies, Types::PokemonSpeciesProseType, "", property: :pokemon_species_proses
end
