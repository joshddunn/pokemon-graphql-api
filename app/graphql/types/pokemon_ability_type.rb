Types::PokemonAbilityType = GraphQL::ObjectType.define do
  name "PokemonAbility"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :ability, !types.Int, "", property: :ability_id
  field :isHidden, !types.Boolean, "", property: :is_hidden
  field :slot, !types.Int, "", property: :slot

end
