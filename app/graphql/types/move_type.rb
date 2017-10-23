Types::MoveType = GraphQL::ObjectType.define do
  name "Move"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, !types.Int, "", property: :generation_id
  field :type, !types.Int, "", property: :type_id
  field :power, !types.Int, "", property: :power
  field :pp, !types.Int, "", property: :pp
  field :accuracy, !types.Int, "", property: :accuracy
  field :priority, !types.Int, "", property: :priority
  field :target, !types.Int, "", property: :target_id
  field :damageClass, !types.Int, "", property: :damage_class_id
  field :effect, !types.Int, "", property: :effect_id
  field :effectChance, !types.Int, "", property: :effect_chance
  field :contestType, !types.Int, "", property: :contest_type_id
  field :contestEffect, !types.Int, "", property: :contest_effect_id
  field :superContestEffect, !types.Int, "", property: :super_contest_effect_id
end