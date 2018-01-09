Types::PokemonEggGroupType = GraphQL::ObjectType.define do
  name "PokemonEggGroup"
  description ""

  field :id, types.ID, "", property: :id
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :eggGroup, Types::EggGroupType, "", property: :egg_group

end
