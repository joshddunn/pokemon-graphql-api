Types::ConquestPokemonEvolutionType = GraphQL::ObjectType.define do
  name 'ConquestPokemonEvolution'
  description ''

  field :id, types.ID, '', property: :id
  field :evolvedSpecies, Types::PokemonSpecyType, '', property: :pokemon_specy
  field :requiredStat, Types::StatType, '', property: :stat
  field :minimumStat, types.Int, '', property: :minimum_stat
  field :minimumLink, types.Int, '', property: :minimum_link
  field :kingdom, Types::ConquestKingdomType, '', property: :conquest_kingdom
  field :warriorGender, Types::GenderType, '', property: :gender
  field :item, Types::ItemType, '', property: :item
  field :recruitingKoRequired, types.Boolean, '',
        property: :recruiting_ko_required
end
