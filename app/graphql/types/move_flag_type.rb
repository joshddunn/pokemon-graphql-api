Types::MoveFlagType = GraphQL::ObjectType.define do
  name "MoveFlag"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :moveFlag, Types::MoveFlagProseType, "", property: :move_flag_proses
end
