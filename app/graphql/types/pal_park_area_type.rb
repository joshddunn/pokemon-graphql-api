Types::PalParkAreaType = GraphQL::ObjectType.define do
  name "PalParkArea"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :area, Types::PalParkType, "", property: :pal_parks
  field :palParkArea, Types::PalParkAreaNameType, "", property: :pal_park_area_names
end
