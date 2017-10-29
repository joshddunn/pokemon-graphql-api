Types::MoveBattleStyleProseType = GraphQL::ObjectType.define do
  name "MoveBattleStyleProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveBattleStyle, Types::MoveBattleStyleType, "", property: :move_battle_styles
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
