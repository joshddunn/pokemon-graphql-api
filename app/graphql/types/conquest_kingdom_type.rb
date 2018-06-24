Types::ConquestKingdomType = GraphQL::ObjectType.define do
  name 'ConquestKingdom'
  description ''

  field :id, types.ID, '', property: :id
  field :identifier, types.String, '', property: :identifier
  field :type, Types::TypeType, '', property: :type

  field :conquestKingdomNames, types[Types::ConquestKingdomNameType], '',
        property: :conquest_kingdom_names
  field :conquestPokemonEvolutions, types[Types::ConquestPokemonEvolutionType], '',
        property: :conquest_pokemon_evolutions
end
