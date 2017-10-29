Types::EvolutionChainType = GraphQL::ObjectType.define do
  name "EvolutionChain"
  description ""

  field :id, !types.ID, "", property: :id
  field :babyTriggerItem, Types::ItemType, "", property: :item

  field :evolutionChain, Types::PokemonSpecyType, "", property: :pokemon_species
end
