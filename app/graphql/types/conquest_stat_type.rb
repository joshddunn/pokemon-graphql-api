Types::ConquestStatType = GraphQL::ObjectType.define do
  name 'ConquestStat'
  description ''

  field :id, types.ID, '', property: :id
  field :identifier, types.String, '', property: :identifier
  field :isBase, types.Boolean, '', property: :is_base

  field :conquestPokemonStats, types[Types::ConquestPokemonStatType], '',
        property: :conquest_pokemon_stats
  field :conquestStatNames, types[Types::ConquestStatNameType], '',
        property: :conquest_stat_names
end
