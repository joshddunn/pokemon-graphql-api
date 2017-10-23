Types::PokemonHabitatNameType = GraphQL::ObjectType.define do
  name "PokemonHabitatName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonHabitat, !types.Int, "", property: :pokemon_habitat_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end