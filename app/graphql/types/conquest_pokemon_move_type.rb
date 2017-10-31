Types::ConquestPokemonMoveType = GraphQL::ObjectType.define do
  name "ConquestPokemonMove"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :move, Types::MoveType, "", property: :move

end
