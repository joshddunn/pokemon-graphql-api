class Resolvers::PokemonShinySpriteBack < GraphQL::Function
  type types.String

  def call(_obj, args, ctx)
    file = _obj.id
    file = "#{_obj.species_id}-#{_obj.identifier.gsub(/^.+-/, "")}" if _obj.identifier.include? "-"  
    Rails.application.config.url + "/sprites/pokemon/back/shiny/#{file}.png"
  end
end
