Types::MoveDamageClassType = GraphQL::ObjectType.define do
  name "MoveDamageClass"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :moveDamageClass, Types::MoveDamageClassProseType, "", property: :move_damage_class_proses
  field :damageClass, Types::TypeType, "", property: :types
end
