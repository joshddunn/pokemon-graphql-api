Types::StatType = GraphQL::ObjectType.define do
  name "Stat"
  description ""

  field :id, types.ID, "", property: :id
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class
  field :identifier, types.String, "", property: :identifier
  field :isBattleOnly, types.Boolean, "", property: :is_battle_only
  field :gameIndex, types.Int, "", property: :game_index

  field :characteristics, types[Types::CharacteristicType], "", property: :characteristics
  field :moveMetaStatChanges, types[Types::MoveMetaStatChangeType], "", property: :move_meta_stat_changes
  field :decreasedStats, types[Types::NatureType], "", property: :decreased_stats
  field :increasedStats, types[Types::NatureType], "", property: :increased_stats
  field :pokemonStats, types[Types::PokemonStatType], "", property: :pokemon_stats
  field :statNames, types[Types::StatNameType], "", property: :stat_names
  field :conquestPokemonEvolutions, types[Types::ConquestPokemonEvolutionType], "", property: :conquest_pokemon_evolutions
end
