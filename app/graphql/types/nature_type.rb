Types::NatureType = GraphQL::ObjectType.define do
  name "Nature"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier
  field :decreasedStat, Types::StatType, "", property: :stat
  field :increasedStat, Types::StatType, "", property: :stat
  field :hatesFlavor, Types::BerryFlavorType, "", property: :berry_flavor
  field :likesFlavor, Types::BerryFlavorType, "", property: :berry_flavor
  field :gameIndex, types.Int, "", property: :game_index

  field :natureBattleStylePreferences, types[Types::NatureBattleStylePreferenceType], "", property: :nature_battle_style_preferences
  field :natureNames, types[Types::NatureNameType], "", property: :nature_names
  field :naturePokeathlonStats, types[Types::NaturePokeathlonStatType], "", property: :nature_pokeathlon_stats
end
