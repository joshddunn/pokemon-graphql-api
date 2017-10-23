Types::PokemonMoveMethodProseType = GraphQL::ObjectType.define do
  name "PokemonMoveMethodProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonMoveMethod, !types.Int, "", property: :pokemon_move_method_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description
end