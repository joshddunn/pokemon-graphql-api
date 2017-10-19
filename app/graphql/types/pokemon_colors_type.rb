Types::PokemonColorsType = GraphQL::ObjectType.define do
  name 'PokemonColor'

  field :id, !types.ID
  field :identifier, !types.String
end
