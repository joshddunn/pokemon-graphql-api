Types::RegionType = GraphQL::ObjectType.define do
  name "Region"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
