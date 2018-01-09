Types::PokemonAbilityType = GraphQL::ObjectType.define do
  name "PokemonAbility"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :ability, Types::AbilityType, "", property: :ability
  field :isHidden, types.Boolean, "", property: :is_hidden
  field :slot, types.Int, "", property: :slot

end
