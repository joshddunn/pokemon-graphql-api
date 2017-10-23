Types::ContestTypeType = GraphQL::ObjectType.define do
  name "ContestType"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
