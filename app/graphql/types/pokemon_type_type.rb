Types::PokemonTypeType = GraphQL::ObjectType.define do
  name "PokemonType"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :type, !types.Int, "", property: :type_id
  field :slot, !types.Int, "", property: :slot

end
