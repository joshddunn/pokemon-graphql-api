Types::LocationAreaProseType = GraphQL::ObjectType.define do
  name "LocationAreaProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :locationArea, !types.Int, "", property: :location_area_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end