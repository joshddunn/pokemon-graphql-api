Types::PokemonTypeType = GraphQL::ObjectType.define do
  name "PokemonType"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :type, Types::TypeType, "", property: :type
  field :slot, types.Int, "", property: :slot

end
