Types::MoveMetumType = GraphQL::ObjectType.define do
  name "MoveMetum"
  description ""

  field :id, types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :metaCategory, Types::MoveMetaCategoryType, "", property: :move_meta_category
  field :metaAilment, Types::MoveMetaAilmentType, "", property: :move_meta_ailment
  field :minHits, types.Int, "", property: :min_hits
  field :maxHits, types.Int, "", property: :max_hits
  field :minTurns, types.Int, "", property: :min_turns
  field :maxTurns, types.Int, "", property: :max_turns
  field :drain, types.Int, "", property: :drain
  field :healing, types.Int, "", property: :healing
  field :critRate, types.Boolean, "", property: :crit_rate
  field :ailmentChance, types.Int, "", property: :ailment_chance
  field :flinchChance, types.Int, "", property: :flinch_chance
  field :statChance, types.Int, "", property: :stat_chance

end
