Types::MoveDamageClassType = GraphQL::ObjectType.define do
  name "MoveDamageClass"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :moveDamageClassProses, types[Types::MoveDamageClassProseType], "", property: :move_damage_class_proses
  field :moves, types[Types::MoveType], "", property: :moves
  field :stats, types[Types::StatType], "", property: :stats
  field :types, types[Types::TypeType], "", property: :types
end
