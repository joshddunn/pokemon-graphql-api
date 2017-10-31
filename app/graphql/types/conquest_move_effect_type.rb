Types::ConquestMoveEffectType = GraphQL::ObjectType.define do
  name "ConquestMoveEffect"
  description ""

  field :id, !types.ID, "", property: :id

  field :conquestMoveData, !types[Types::ConquestMoveDatumType], "", property: :conquest_move_data
  field :conquestMoveEffectProses, !types[Types::ConquestMoveEffectProseType], "", property: :conquest_move_effect_proses
end
