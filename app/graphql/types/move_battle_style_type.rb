Types::MoveBattleStyleType = GraphQL::ObjectType.define do
  name "MoveBattleStyle"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :moveBattleStyleProses, types[Types::MoveBattleStyleProseType], "", property: :move_battle_style_proses
  field :natureBattleStylePreferences, types[Types::NatureBattleStylePreferenceType], "", property: :nature_battle_style_preferences
end
