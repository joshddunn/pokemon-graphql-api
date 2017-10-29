Types::NatureType = GraphQL::ObjectType.define do
  name "Nature"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :decreasedStat, Types::DecreasedStatType, "", property: :decreased_stat
  field :increasedStat, Types::IncreasedStatType, "", property: :increased_stat
  field :hatesFlavor, Types::HatesFlavorType, "", property: :hates_flavor
  field :likesFlavor, Types::LikesFlavorType, "", property: :likes_flavor
  field :gameIndex, !types.Int, "", property: :game_index

  field :nature, Types::NaturePokeathlonStatType, "", property: :nature_pokeathlon_stats
end
