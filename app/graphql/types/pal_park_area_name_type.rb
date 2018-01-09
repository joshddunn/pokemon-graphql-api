Types::PalParkAreaNameType = GraphQL::ObjectType.define do
  name "PalParkAreaName"
  description ""

  field :id, types.ID, "", property: :id
  field :palParkArea, Types::PalParkAreaType, "", property: :pal_park_area
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
