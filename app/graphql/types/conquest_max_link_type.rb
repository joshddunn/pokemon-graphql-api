Types::ConquestMaxLinkType = GraphQL::ObjectType.define do
  name "ConquestMaxLink"
  description ""

  field :id, types.ID, "", property: :id
  field :warriorRank, Types::ConquestWarriorRankType, "", property: :conquest_warrior_rank
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :maxLink, types.Int, "", property: :max_link

end
