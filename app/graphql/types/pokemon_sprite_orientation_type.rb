Types::PokemonSpriteOrientationType = GraphQL::ObjectType.define do
  name "PokemonSpriteOrientation"
  description ""

  field :front, function: Resolvers::PokemonSpriteUrl.new
  field :back, function: Resolvers::PokemonSpriteUrl.new("back/")
end
