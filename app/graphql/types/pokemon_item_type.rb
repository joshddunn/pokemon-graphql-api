Types::PokemonItemType = GraphQL::ObjectType.define do
  name "PokemonItem"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :version, Types::VersionType, "", property: :version
  field :item, Types::ItemType, "", property: :item
  field :rarity, !types.Int, "", property: :rarity

end
