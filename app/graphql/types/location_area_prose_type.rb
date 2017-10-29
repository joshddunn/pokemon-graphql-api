Types::LocationAreaProseType = GraphQL::ObjectType.define do
  name "LocationAreaProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :locationArea, Types::LocationAreaType, "", property: :location_area
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
