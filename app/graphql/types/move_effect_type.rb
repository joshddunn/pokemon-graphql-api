Types::MoveEffectType = GraphQL::ObjectType.define do
  name "MoveEffect"
  description ""

  field :id, !types.ID, "", property: :id

  field :moveChangelogs, !types[Types::MoveChangelogType], "", property: :move_changelogs
  field :moveEffectChangelogs, !types[Types::MoveEffectChangelogType], "", property: :move_effect_changelogs
  field :moveEffectProses, !types[Types::MoveEffectProseType], "", property: :move_effect_proses
  field :moves, !types[Types::MoveType], "", property: :moves
end
