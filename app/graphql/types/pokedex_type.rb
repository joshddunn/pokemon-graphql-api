Types::PokedexType = GraphQL::ObjectType.define do
  name "Pokedex"
  description ""

  field :id, !types.ID, "", property: :id
  field :region, !types.Int, "", property: :region_id
  field :identifier, !types.String, "", property: :identifier
  field :isMainSeries, !types.Boolean, "", property: :is_main_series
end