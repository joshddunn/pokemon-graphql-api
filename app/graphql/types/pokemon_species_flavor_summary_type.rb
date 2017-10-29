Types::PokemonSpeciesFlavorSummaryType = GraphQL::ObjectType.define do
  name "PokemonSpeciesFlavorSummary"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :localLanguage, Types::LanguageType, "", property: :language
  field :flavorSummary, !types.String, "", property: :flavor_summary

end
