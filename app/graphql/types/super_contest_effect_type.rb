Types::SuperContestEffectType = GraphQL::ObjectType.define do
  name "SuperContestEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :appeal, !types.Int, "", property: :appeal

  field :superContestEffect, Types::SuperContestEffectProseType, "", property: :super_contest_effect_proses
end
