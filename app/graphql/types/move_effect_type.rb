Types::MoveEffectType = GraphQL::ObjectType.define do
  name "MoveEffect"
  description ""

  field :id, !types.ID, "", property: :id
end
