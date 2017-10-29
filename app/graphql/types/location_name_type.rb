Types::LocationNameType = GraphQL::ObjectType.define do
  name "LocationName"
  description ""

  field :id, !types.ID, "", property: :id
  field :location, Types::LocationType, "", property: :location
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
