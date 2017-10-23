Types::MoveBattleStyleProseType = GraphQL::ObjectType.define do
  name "MoveBattleStyleProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveBattleStyle, !types.Int, "", property: :move_battle_style_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
