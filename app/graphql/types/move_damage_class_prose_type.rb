Types::MoveDamageClassProseType = GraphQL::ObjectType.define do
  name "MoveDamageClassProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveDamageClass, Types::MoveDamageClassType, "", property: :move_damage_class
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
