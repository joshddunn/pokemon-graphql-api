Types::LanguageNameType = GraphQL::ObjectType.define do
  name "LanguageName"
  description ""

  field :id, !types.ID, "", property: :id
  field :language, Types::LanguageType, "", property: :language
  field :localLanguage, Types::LocalLanguageType, "", property: :local_language
  field :name, !types.String, "", property: :name

end
