Types::PokemonShapeProseType = GraphQL::ObjectType.define do
  name "PokemonShapeProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokemonShape, !types.Int, "", property: :pokemon_shape_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :awesomeName, !types.String, "", property: :awesome_name

end
