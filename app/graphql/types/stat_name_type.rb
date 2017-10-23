Types::StatNameType = GraphQL::ObjectType.define do
  name "StatName"
  description ""

  field :id, !types.ID, "", property: :id
  field :stat, !types.Int, "", property: :stat_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
