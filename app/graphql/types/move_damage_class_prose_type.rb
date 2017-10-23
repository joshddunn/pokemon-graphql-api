Types::MoveDamageClassProseType = GraphQL::ObjectType.define do
  name "MoveDamageClassProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveDamageClass, !types.Int, "", property: :move_damage_class_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description
end
