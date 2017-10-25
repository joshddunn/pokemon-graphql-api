Types::PokemonSpeciesNameType = GraphQL::ObjectType.define do
  name "PokemonSpeciesName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, !types.Int, "", property: :pokemon_species_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :genus, !types.String, "", property: :genus

end
