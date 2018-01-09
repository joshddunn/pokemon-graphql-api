Types::StatNameType = GraphQL::ObjectType.define do
  name "StatName"
  description ""

  field :id, types.ID, "", property: :id
  field :stat, Types::StatType, "", property: :stat
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
