Types::ItemFlingEffectType = GraphQL::ObjectType.define do
  name "ItemFlingEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :name, !types.String, "", property: :name

  field :itemFlingEffectProses, !types[Types::ItemFlingEffectProseType], "", property: :item_fling_effect_proses
  field :items, !types[Types::ItemType], "", property: :items
end
