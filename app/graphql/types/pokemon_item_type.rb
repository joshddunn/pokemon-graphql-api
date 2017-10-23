Types::PokemonItemType = GraphQL::ObjectType.define do
  name "PokemonItem"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :version, !types.Int, "", property: :version_id
  field :item, !types.Int, "", property: :item_id
  field :rarity, !types.Int, "", property: :rarity
end
