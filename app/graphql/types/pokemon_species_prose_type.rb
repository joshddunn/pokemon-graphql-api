Types::PokemonSpeciesProseType = GraphQL::ObjectType.define do
  name "PokemonSpeciesProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, !types.Int, "", property: :pokemon_species_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :formDescription, , "", property: :form_description
end