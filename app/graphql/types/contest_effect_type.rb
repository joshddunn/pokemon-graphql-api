Types::ContestEffectType = GraphQL::ObjectType.define do
  name "ContestEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :appeal, !types.Int, "", property: :appeal
  field :jam, !types.Int, "", property: :jam

  field :contestEffect, Types::MoveType, "", property: :moves
end
