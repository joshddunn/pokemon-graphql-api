Types::LanguageNameType = GraphQL::ObjectType.define do
  name "LanguageName"
  description ""

  field :id, !types.ID, "", property: :id
  field :language, !types.Int, "", property: :language_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
