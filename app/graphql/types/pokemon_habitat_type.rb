Types::PokemonHabitatType = GraphQL::ObjectType.define do
  name "PokemonHabitat"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

end
