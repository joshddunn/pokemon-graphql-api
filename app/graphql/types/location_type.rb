Types::LocationType = GraphQL::ObjectType.define do
  name "Location"
  description ""

  field :id, !types.ID, "", property: :id
  field :region, !types.Int, "", property: :region_id
  field :identifier, !types.String, "", property: :identifier
end