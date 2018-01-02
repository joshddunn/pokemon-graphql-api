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
    if _obj.identifier.include? "-"
      "#{_obj.species_id}-#{_obj.identifier.sub(/\w+-/, "")}"
    else
      _obj.id
    end
  end

  def url obj
    if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
      "#{Rails.application.config.url}/v1/sprites/pokemon/#{dir}#{obj[:type]}#{obj[:gender]}#{file obj[:obj]}.png"
    else
      ""
    end
  end
end
