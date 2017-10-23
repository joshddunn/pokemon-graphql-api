Types::PokemonFormNameType = GraphQL::ObjectType.define do
  name "PokemonFormName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonForm, !types.Int, "", property: :pokemon_form_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :formName, !types.String, "", property: :form_name
  field :pokemonName, !types.String, "", property: :pokemon_name
end