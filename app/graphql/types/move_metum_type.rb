Types::MoveMetumType = GraphQL::ObjectType.define do
  name "MoveMetum"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :metaCategory, !types.Int, "", property: :meta_category_id
  field :metaAilment, !types.Int, "", property: :meta_ailment_id
  field :minHits, !types.Int, "", property: :min_hits
  field :maxHits, !types.Int, "", property: :max_hits
  field :minTurns, !types.Int, "", property: :min_turns
  field :maxTurns, !types.Int, "", property: :max_turns
  field :drain, !types.Int, "", property: :drain
  field :healing, !types.Int, "", property: :healing
  field :critRate, !types.Boolean, "", property: :crit_rate
  field :ailmentChance, !types.Int, "", property: :ailment_chance
  field :flinchChance, !types.Int, "", property: :flinch_chance
  field :statChance, !types.Int, "", property: :stat_chance
end