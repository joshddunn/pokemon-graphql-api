Types::VersionNameType = GraphQL::ObjectType.define do
  name "VersionName"
  description ""

  field :id, !types.ID, "", property: :id
  field :version, !types.Int, "", property: :version_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
