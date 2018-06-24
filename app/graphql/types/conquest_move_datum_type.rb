Types::ConquestMoveDatumType = GraphQL::ObjectType.define do
  name 'ConquestMoveDatum'
  description ''

  field :id, types.ID, '', property: :id
  field :move, Types::MoveType, '', property: :move
  field :power, types.Int, '', property: :power
  field :accuracy, types.Int, '', property: :accuracy
  field :effectChance, types.Int, '', property: :effect_chance
  field :effect, Types::ConquestMoveEffectType, '',
        property: :conquest_move_effect
  field :range, Types::ConquestMoveRangeType, '', property: :conquest_move_range
  field :displacement, Types::ConquestMoveDisplacementType, '',
        property: :conquest_move_displacement
end
