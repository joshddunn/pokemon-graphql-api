Types::PokemonSpeciesNameType = GraphQL::ObjectType.define do
  name "PokemonSpeciesName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :genus, !types.String, "", property: :genus

end
