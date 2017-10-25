Types::MoveFlagProseType = GraphQL::ObjectType.define do
  name "MoveFlagProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveFlag, !types.Int, "", property: :move_flag_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
