Types::VersionType = GraphQL::ObjectType.define do
  name "Version"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :identifier, !types.String, "", property: :identifier

  field :version, Types::VersionNameType, "", property: :version_names
end
