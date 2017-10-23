Types::PokemonColorType = GraphQL::ObjectType.define do
  name "PokemonColor"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
