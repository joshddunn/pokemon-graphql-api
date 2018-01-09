Types::VersionNameType = GraphQL::ObjectType.define do
  name "VersionName"
  description ""

  field :id, types.ID, "", property: :id
  field :version, Types::VersionType, "", property: :version
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
