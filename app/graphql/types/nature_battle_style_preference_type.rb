Types::NatureBattleStylePreferenceType = GraphQL::ObjectType.define do
  name "NatureBattleStylePreference"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, !types.Int, "", property: :nature_id
  field :moveBattleStyle, !types.Int, "", property: :move_battle_style_id
  field :lowHpPreference, !types.Int, "", property: :low_hp_preference
  field :highHpPreference, !types.Int, "", property: :high_hp_preference
end