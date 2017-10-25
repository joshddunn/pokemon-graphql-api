Types::MoveTargetProseType = GraphQL::ObjectType.define do
  name "MoveTargetProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveTarget, !types.Int, "", property: :move_target_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
