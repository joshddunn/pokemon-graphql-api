Types::PokemonColorNameType = GraphQL::ObjectType.define do
  name "PokemonColorName"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonColor, Types::PokemonColorType, "", property: :pokemon_color
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
