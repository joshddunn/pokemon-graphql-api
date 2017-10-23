Types::ContestTypeNameType = GraphQL::ObjectType.define do
  name "ContestTypeName"
  description ""

  field :id, !types.ID, "", property: :id
  field :contestType, !types.Int, "", property: :contest_type_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :flavor, !types.String, "", property: :flavor
  field :color, !types.String, "", property: :color
end
