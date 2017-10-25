Types::VersionGroupRegionType = GraphQL::ObjectType.define do
  name "VersionGroupRegion"
  description ""

  field :id, !types.ID, "", property: :id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :region, !types.Int, "", property: :region_id

end
