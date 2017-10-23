Types::PokemonEggGroupType = GraphQL::ObjectType.define do
  name "PokemonEggGroup"
  description ""

  field :id, !types.ID, "", property: :id
  field :species, !types.Int, "", property: :species_id
  field :eggGroup, !types.Int, "", property: :egg_group_id
end
