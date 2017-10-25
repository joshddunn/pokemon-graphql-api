Types::EvolutionChainType = GraphQL::ObjectType.define do
  name "EvolutionChain"
  description ""

  field :id, !types.ID, "", property: :id
  field :babyTriggerItem, !types.Int, "", property: :baby_trigger_item_id

end
