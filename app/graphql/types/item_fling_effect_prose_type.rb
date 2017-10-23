Types::ItemFlingEffectProseType = GraphQL::ObjectType.define do
  name "ItemFlingEffectProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :itemFlingEffect, !types.Int, "", property: :item_fling_effect_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :effect, !types.String, "", property: :effect
end
