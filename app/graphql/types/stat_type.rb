Types::StatType = GraphQL::ObjectType.define do
  name "Stat"
  description ""

  field :id, !types.ID, "", property: :id
  field :damageClass, !types.Int, "", property: :damage_class_id
  field :identifier, !types.String, "", property: :identifier
  field :isBattleOnly, !types.Boolean, "", property: :is_battle_only
  field :gameIndex, !types.Int, "", property: :game_index

end
