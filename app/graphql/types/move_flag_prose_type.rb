Types::MoveFlagProseType = GraphQL::ObjectType.define do
  name "MoveFlagProse"
  description ""

  field :id, types.ID, "", property: :id
  field :moveFlag, Types::MoveFlagType, "", property: :move_flag
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name
  field :description, types.String, "", property: :description

end
