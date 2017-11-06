class Resolvers::PokemonSpriteUrl < GraphQL::Function
  type types.String

  # makes a simple wrapper method for the @dir variable so it can be easily changed in the future
  attr_reader :dir

  def initialize(dir = "")
    @dir = dir 
  end

  def call(obj, args, ctx)
      _obj = obj[:obj]

      file = _obj.id
      file = "#{_obj.species_id}-#{_obj.identifier.sub(/\w+-/, "")}" if _obj.identifier.include? "-"  

      if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
        "#{Rails.application.config.url}/sprites/pokemon/#{dir}#{obj[:type]}#{obj[:gender]}#{file}.png"
      else
        ""
      end
  end
end
