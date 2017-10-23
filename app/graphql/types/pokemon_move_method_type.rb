Types::PokemonMoveMethodType = GraphQL::ObjectType.define do
  name "PokemonMoveMethod"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end