class Resolvers::PokemonSpriteUrl < GraphQL::Function
  type types.String

  # makes a simple wrapper method for the @dir variable so it can be easily changed in the future
  attr_reader :dir

  def initialize(dir = "")
    @dir = dir 
  end

  def call(obj, args, ctx)
      url obj
  end

  def file _obj
    if not _obj[:form_identifier].nil? and not _obj[:form_identifier] == ""
      "#{_obj.pokemon.pokemon_specy.id}-#{_obj[:form_identifier]}"
    elsif _obj.identifier.include? "-" and ( _obj.identifier.include? "-mega" or _obj.identifier.include? "-alola" )
      "#{_obj.species_id}-#{_obj.identifier.sub(/\w+-/, "")}"
    else
      _obj.id
    end
  end

  def url obj
    if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
      file = "/v1/sprites/pokemon/#{dir}#{obj[:type]}#{obj[:gender]}#{file obj[:obj]}.png"
      return "#{Rails.application.config.url}#{file}" if File.exists? "public#{file}"
      "#{Rails.application.config.url}/v1/sprites/pokemon/0.png"
    else
      ""
    end
  end
end
