Types::LocationNameType = GraphQL::ObjectType.define do
  name "LocationName"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, !types.Int, "", property: :location_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
