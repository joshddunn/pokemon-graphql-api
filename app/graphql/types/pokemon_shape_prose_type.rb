Types::PokemonShapeProseType = GraphQL::ObjectType.define do
  name "PokemonShapeProse"
  description ""

  field :id, types.ID, "", property: :id
  field :pokemonShape, Types::PokemonShapeType, "", property: :pokemon_shape
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name
  field :awesomeName, types.String, "", property: :awesome_name
  field :description, types.String, "", property: :description

end
