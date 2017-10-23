Types::MoveTargetType = GraphQL::ObjectType.define do
  name "MoveTarget"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end