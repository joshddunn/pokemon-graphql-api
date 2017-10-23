Types::PalParkAreaNameType = GraphQL::ObjectType.define do
  name "PalParkAreaName"
  description ""

  field :id, !types.ID, "", property: :id
  field :palParkArea, !types.Int, "", property: :pal_park_area_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
