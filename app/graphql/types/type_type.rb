Types::TypeType = GraphQL::ObjectType.define do
  name "Type"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, !types.Int, "", property: :generation_id
  field :damageClass, !types.Int, "", property: :damage_class_id
end
