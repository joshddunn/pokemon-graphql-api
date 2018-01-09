Types::PokemonSpeciesProseType = GraphQL::ObjectType.define do
  name "PokemonSpeciesProse"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :localLanguage, Types::LanguageType, "", property: :language
  field :formDescription, types.String, "", property: :form_description

end
