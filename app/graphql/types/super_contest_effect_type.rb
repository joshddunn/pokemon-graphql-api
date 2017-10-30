Types::SuperContestEffectType = GraphQL::ObjectType.define do
  name "SuperContestEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :appeal, !types.Int, "", property: :appeal

  field :moves, !types[Types::MoveType], "", property: :moves
  field :superContestEffectProses, !types[Types::SuperContestEffectProseType], "", property: :super_contest_effect_proses
end
