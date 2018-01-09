Types::PalParkType = GraphQL::ObjectType.define do
  name "PalPark"
  description ""

  field :id, types.ID, "", property: :id
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :area, Types::PalParkAreaType, "", property: :pal_park_area
  field :baseScore, types.Int, "", property: :base_score
  field :rate, types.Int, "", property: :rate

end
