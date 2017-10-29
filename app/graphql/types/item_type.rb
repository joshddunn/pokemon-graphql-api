Types::ItemType = GraphQL::ObjectType.define do
  name "Item"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :category, Types::ItemCategoryType, "", property: :item_category
  field :cost, !types.Int, "", property: :cost
  field :flingPower, !types.Int, "", property: :fling_power
  field :flingEffect, Types::ItemFlingEffectType, "", property: :item_fling_effect

  field :item, Types::PokemonItemType, "", property: :pokemon_items
  field :babyTriggerItem, Types::EvolutionChainType, "", property: :evolution_chains
  field :heldItem, Types::HeldItemType, "", property: :held_items
  field :triggerItem, Types::TriggerItemType, "", property: :trigger_items
end
