Types::LocationGameIndexType = GraphQL::ObjectType.define do
  name "LocationGameIndex"
  description ""

  field :id, types.ID, "", property: :id
  field :location, Types::LocationType, "", property: :location
  field :generation, Types::GenerationType, "", property: :generation
  field :gameIndex, types.Int, "", property: :game_index

end
