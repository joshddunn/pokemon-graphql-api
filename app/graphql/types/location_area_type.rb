Types::LocationAreaType = GraphQL::ObjectType.define do
  name "LocationArea"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, !types.Int, "", property: :location_id
  field :gameIndex, !types.Int, "", property: :game_index
  field :identifier, !types.String, "", property: :identifier

end
