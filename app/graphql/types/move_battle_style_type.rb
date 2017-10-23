Types::MoveBattleStyleType = GraphQL::ObjectType.define do
  name "MoveBattleStyle"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end