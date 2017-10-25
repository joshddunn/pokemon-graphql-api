Types::NatureType = GraphQL::ObjectType.define do
  name "Nature"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :decreasedStat, !types.Int, "", property: :decreased_stat_id
  field :increasedStat, !types.Int, "", property: :increased_stat_id
  field :hatesFlavor, !types.Int, "", property: :hates_flavor_id
  field :likesFlavor, !types.Int, "", property: :likes_flavor_id
  field :gameIndex, !types.Int, "", property: :game_index

end
