Types::PokemonSpeciesFlavorSummaryType = GraphQL::ObjectType.define do
  name "PokemonSpeciesFlavorSummary"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, !types.Int, "", property: :pokemon_species_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :flavorSummary, !types.String, "", property: :flavor_summary

end
