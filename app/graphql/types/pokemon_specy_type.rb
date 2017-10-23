Types::PokemonSpecyType = GraphQL::ObjectType.define do
  name "PokemonSpecy"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, !types.Int, "", property: :generation_id
  field :evolvesFromSpecies, Types::PokemonSpecyType, "", property: :pokemon_species
  field :evolutionChain, !types.Int, "", property: :evolution_chain_id
  field :color, Types::PokemonColorType, "", property: :pokemon_color
  field :shape, !types.Int, "", property: :shape_id
  field :habitat, !types.Int, "", property: :habitat_id
  field :genderRate, !types.Int, "", property: :gender_rate
  field :captureRate, !types.Int, "", property: :capture_rate
  field :baseHappiness, !types.Int, "", property: :base_happiness
  field :isBaby, !types.Boolean, "", property: :is_baby
  field :hatchCounter, !types.Int, "", property: :hatch_counter
  field :hasGenderDifferences, !types.Boolean, "", property: :has_gender_differences
  field :growthRate, !types.Int, "", property: :growth_rate_id
  field :formsSwitchable, !types.Boolean, "", property: :forms_switchable
  field :order, !types.Int, "", property: :order
  field :conquestOrder, !types.Int, "", property: :conquest_order
end