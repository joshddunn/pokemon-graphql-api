Types::AbilityNameType = GraphQL::ObjectType.define do
  name "AbilityName"
  description ""

  field :id, !types.ID, "", property: :id
  field :ability, !types.Int, "", property: :ability_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end