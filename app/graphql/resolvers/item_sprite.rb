class Resolvers::ItemSprite < GraphQL::Function
  type types.String

  def call(_obj, args, ctx)
    "https://github.com/PokeAPI/pokeapi/tree/master/data/v2/sprites/items/#{_obj.identifier}.png"
  end
end
