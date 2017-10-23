Types::PalParkAreaType = GraphQL::ObjectType.define do
  name "PalParkArea"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
