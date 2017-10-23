Types::PokemonColorNameType = GraphQL::ObjectType.define do
  name "PokemonColorName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonColor, !types.Int, "", property: :pokemon_color_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end