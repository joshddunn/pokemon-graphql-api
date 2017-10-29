Types::RegionType = GraphQL::ObjectType.define do
  name "Region"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :mainRegion, Types::GenerationType, "", property: :generations
  field :region, Types::VersionGroupRegionType, "", property: :version_group_regions
end
