Types::TypeEfficacyType = GraphQL::ObjectType.define do
  name "TypeEfficacy"
  description ""

  field :id, !types.ID, "", property: :id
  field :damageType, Types::TypeType, "", property: :type
  field :targetType, Types::TypeType, "", property: :type
  field :damageFactor, !types.Int, "", property: :damage_factor

end
