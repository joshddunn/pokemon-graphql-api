Types::PokemonShapeType = GraphQL::ObjectType.define do
  name "PokemonShape"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
