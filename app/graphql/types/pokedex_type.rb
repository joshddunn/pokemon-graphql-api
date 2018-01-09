Types::PokedexType = GraphQL::ObjectType.define do
  name "Pokedex"
  description ""

  field :id, types.ID, "", property: :id
  field :region, Types::RegionType, "", property: :region
  field :identifier, types.String, "", property: :identifier
  field :isMainSeries, types.Boolean, "", property: :is_main_series

  field :pokedexProses, types[Types::PokedexProseType], "", property: :pokedex_proses
  field :pokedexVersionGroups, types[Types::PokedexVersionGroupType], "", property: :pokedex_version_groups
  field :pokemonDexNumbers, types[Types::PokemonDexNumberType], "", property: :pokemon_dex_numbers
end
