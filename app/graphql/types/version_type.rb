Types::VersionType = GraphQL::ObjectType.define do
  name "Version"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :identifier, !types.String, "", property: :identifier

end
