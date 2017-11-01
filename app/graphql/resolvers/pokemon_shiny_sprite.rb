class Resolvers::PokemonShinySprite < GraphQL::Function
  type types.String
  
  def call(_obj, args, ctx)
    file = _obj.id
    file = "#{_obj.species_id}-alola" if _obj.identifier.include? "alola"  
    "https://github.com/PokeAPI/pokeapi/tree/master/data/v2/sprites/pokemon/shiny/#{file}.png"
  end
end
