Types::GrowthRateType = GraphQL::ObjectType.define do
  name "GrowthRate"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :formula, !types.String, "", property: :formula

  field :experiences, !types[Types::ExperienceType], "", property: :experiences
  field :growthRateProses, !types[Types::GrowthRateProseType], "", property: :growth_rate_proses
  field :pokemonSpecies, !types[Types::PokemonSpecyType], "", property: :pokemon_species
end
