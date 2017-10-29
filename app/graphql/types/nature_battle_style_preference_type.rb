Types::NatureBattleStylePreferenceType = GraphQL::ObjectType.define do
  name "NatureBattleStylePreference"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, Types::NatureType, "", property: :nature
  field :moveBattleStyle, Types::MoveBattleStyleType, "", property: :move_battle_style
  field :lowHpPreference, !types.Int, "", property: :low_hp_preference
  field :highHpPreference, !types.Int, "", property: :high_hp_preference

end
