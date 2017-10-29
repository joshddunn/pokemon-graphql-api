Types::ItemFlingEffectType = GraphQL::ObjectType.define do
  name "ItemFlingEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :name, !types.String, "", property: :name

  field :itemFlingEffect, Types::ItemFlingEffectProseType, "", property: :item_fling_effect_proses
  field :flingEffect, Types::ItemType, "", property: :items
end
