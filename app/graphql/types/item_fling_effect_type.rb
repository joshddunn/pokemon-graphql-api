Types::ItemFlingEffectType = GraphQL::ObjectType.define do
  name "ItemFlingEffect"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :itemFlingEffectProses, types[Types::ItemFlingEffectProseType], "", property: :item_fling_effect_proses
  field :items, types[Types::ItemType], "", property: :items
end
