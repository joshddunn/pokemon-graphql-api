Types::GenderType = GraphQL::ObjectType.define do
  name "Gender"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :gender, Types::PokemonEvolutionType, "", property: :pokemon_evolutions
end
