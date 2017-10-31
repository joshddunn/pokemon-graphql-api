Types::ConquestMoveDisplacementType = GraphQL::ObjectType.define do
  name "ConquestMoveDisplacement"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :affectsTarget, !types.Boolean, "", property: :affects_target

  field :conquestMoveData, !types[Types::ConquestMoveDatumType], "", property: :conquest_move_data
  field :conquestMoveDisplacementProses, !types[Types::ConquestMoveDisplacementProseType], "", property: :conquest_move_displacement_proses
end
