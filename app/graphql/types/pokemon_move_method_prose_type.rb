Types::PokemonMoveMethodProseType = GraphQL::ObjectType.define do
  name "PokemonMoveMethodProse"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonMoveMethod, Types::PokemonMoveMethodType, "", property: :pokemon_move_method
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name
  field :description, types.String, "", property: :description

end
