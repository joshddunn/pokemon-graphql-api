Types::GenerationType = GraphQL::ObjectType.define do
  name "Generation"
  description ""

  field :id, !types.ID, "", property: :id
  field :mainRegion, Types::RegionType, "", property: :region
  field :identifier, !types.String, "", property: :identifier

  field :generation, Types::VersionGroupType, "", property: :version_groups
end
