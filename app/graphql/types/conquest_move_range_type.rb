Types::ConquestMoveRangeType = GraphQL::ObjectType.define do
  name 'ConquestMoveRange'
  description ''

  field :id, types.ID, '', property: :id
  field :identifier, types.String, '', property: :identifier
  field :targets, types.Int, '', property: :targets

  field :conquestMoveData, types[Types::ConquestMoveDatumType], '',
        property: :conquest_move_data
  field :conquestMoveRangeProses, types[Types::ConquestMoveRangeProseType], '',
        property: :conquest_move_range_proses
end
