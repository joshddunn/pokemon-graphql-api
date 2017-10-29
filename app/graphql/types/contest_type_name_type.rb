Types::ContestTypeNameType = GraphQL::ObjectType.define do
  name "ContestTypeName"
  description ""

  field :id, !types.ID, "", property: :id
  field :contestType, Types::ContestTypeType, "", property: :contest_type
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :flavor, !types.String, "", property: :flavor
  field :color, !types.String, "", property: :color

end
