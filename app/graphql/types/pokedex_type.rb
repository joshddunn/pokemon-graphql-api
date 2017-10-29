Types::PokedexType = GraphQL::ObjectType.define do
  name "Pokedex"
  description ""

  field :id, !types.ID, "", property: :id
  field :region, Types::RegionType, "", property: :region
  field :identifier, !types.String, "", property: :identifier
  field :isMainSeries, !types.Boolean, "", property: :is_main_series

  field :pokedex, Types::PokemonDexNumberType, "", property: :pokemon_dex_numbers
end
