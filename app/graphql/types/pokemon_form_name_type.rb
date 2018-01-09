Types::PokemonFormNameType = GraphQL::ObjectType.define do
  name "PokemonFormName"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonForm, Types::PokemonFormType, "", property: :pokemon_form
  field :localLanguage, Types::LanguageType, "", property: :language
  field :formName, types.String, "", property: :form_name
  field :pokemonName, types.String, "", property: :pokemon_name

end
