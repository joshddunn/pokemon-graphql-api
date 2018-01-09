Types::ItemFlingEffectProseType = GraphQL::ObjectType.define do
  name "ItemFlingEffectProse"
  description ""

  field :id, types.ID, "", property: :id
  field :itemFlingEffect, Types::ItemFlingEffectType, "", property: :item_fling_effect
  field :localLanguage, Types::LanguageType, "", property: :language
  field :effect, types.String, "", property: :effect

end
