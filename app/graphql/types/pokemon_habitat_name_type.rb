Types::PokemonHabitatNameType = GraphQL::ObjectType.define do
  name "PokemonHabitatName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonHabitat, Types::PokemonHabitatType, "", property: :pokemon_habitat
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
