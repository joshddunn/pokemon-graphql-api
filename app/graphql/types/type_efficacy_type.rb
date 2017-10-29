Types::TypeEfficacyType = GraphQL::ObjectType.define do
  name "TypeEfficacy"
  description ""

  field :id, !types.ID, "", property: :id
  field :damageType, Types::DamageTypeType, "", property: :damage_type
  field :targetType, Types::TargetTypeType, "", property: :target_type
  field :damageFactor, !types.Int, "", property: :damage_factor

end
