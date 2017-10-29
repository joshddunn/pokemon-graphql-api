Types::MoveTargetProseType = GraphQL::ObjectType.define do
  name "MoveTargetProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveTarget, Types::MoveTargetType, "", property: :move_target
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
