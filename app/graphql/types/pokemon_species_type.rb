# defines a new GraphQL type
Types::PokemonSpeciesType = GraphQL::ObjectType.define do
  name 'PokemonSpecy'

  field :id, !types.ID
  field :identifier, !types.String
  field :generationId, !types.Int, property: :generation_id
  field :evolvesFromSpecies, Types::PokemonSpeciesType, property: :pokemon_specy
  field :evolutionChainId, !types.Int, property: :evolution_chain_id
  field :color, Types::PokemonColorsType, property: :pokemon_color
  field :shapeId, !types.Int, property: :shape_id
  field :habitatId, !types.Int, property: :habitat_id
  field :genderRate, !types.Int, property: :gender_rate
  field :captureRate, !types.Int, property: :capture_rate
  field :baseHappiness, !types.Int, property: :base_happiness
  field :isBaby, !types.Boolean, property: :is_baby
  field :hatchCounter, !types.Int, property: :hatch_counter
  field :hasGenderDifferences, !types.Boolean, property: :has_gender_differences
  field :growthRateId, !types.Int, property: :growth_rate_id
  field :formsSwitchable, !types.Boolean, property: :forms_switchable
  field :order, !types.Int
  field :conquestOrder, !types.Int, property: :conquest_order
end
