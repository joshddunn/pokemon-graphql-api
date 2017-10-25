Types::LocationGameIndexType = GraphQL::ObjectType.define do
  name "LocationGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, !types.Int, "", property: :location_id
  field :generation, !types.Int, "", property: :generation_id
  field :gameIndex, !types.Int, "", property: :game_index

end
