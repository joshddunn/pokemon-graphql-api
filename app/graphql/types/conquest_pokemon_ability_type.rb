Types::ConquestPokemonAbilityType = GraphQL::ObjectType.define do
  name "ConquestPokemonAbility"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :slot, !types.Int, "", property: :slot
  field :ability, Types::AbilityType, "", property: :ability

end
