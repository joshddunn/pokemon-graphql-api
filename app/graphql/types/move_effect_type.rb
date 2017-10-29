Types::MoveEffectType = GraphQL::ObjectType.define do
  name "MoveEffect"
  description ""

  field :id, !types.ID, "", property: :id

  field :effect, Types::MoveType, "", property: :moves
  field :moveEffect, Types::MoveEffectProseType, "", property: :move_effect_proses
end
