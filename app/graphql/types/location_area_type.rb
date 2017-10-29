Types::LocationAreaType = GraphQL::ObjectType.define do
  name "LocationArea"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, Types::LocationType, "", property: :location
  field :gameIndex, !types.Int, "", property: :game_index
  field :identifier, !types.String, "", property: :identifier

  field :locationArea, Types::LocationAreaProseType, "", property: :location_area_proses
end
