Types::LanguageNameType = GraphQL::ObjectType.define do
  name "LanguageName"
  description ""

  field :id, types.ID, "", property: :id
  field :language, Types::LanguageType, "", property: :language
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
