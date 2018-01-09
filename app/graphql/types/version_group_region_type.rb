Types::VersionGroupRegionType = GraphQL::ObjectType.define do
  name "VersionGroupRegion"
  description ""

  field :id, types.ID, "", property: :id
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :region, Types::RegionType, "", property: :region

end
