Types::EggGroupType = GraphQL::ObjectType.define do
  name "EggGroup"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :eggGroupProses, types[Types::EggGroupProseType], "", property: :egg_group_proses
  field :pokemonEggGroups, types[Types::PokemonEggGroupType], "", property: :pokemon_egg_groups
end
