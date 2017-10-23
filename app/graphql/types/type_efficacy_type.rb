Types::TypeEfficacyType = GraphQL::ObjectType.define do
  name "TypeEfficacy"
  description ""

  field :id, !types.ID, "", property: :id
  field :damageType, !types.Int, "", property: :damage_type_id
  field :targetType, !types.Int, "", property: :target_type_id
  field :damageFactor, !types.Int, "", property: :damage_factor
end
