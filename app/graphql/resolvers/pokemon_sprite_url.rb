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
    if _obj.model_name.name == "PokemonForm"
      "#{_obj.pokemon.species_id}-#{_obj.form_identifier}"
    elsif _obj.model_name.name == "Pokemon"
      file_name = "#{_obj.species_id}" 

      form_identifier = _obj.pokemon_forms.first.form_identifier
      file_name += "-#{form_identifier}" unless form_identifier.blank?

      file_name
    end
  end

  def url obj
    if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
      "#{Rails.application.config.url}/v1/sprites/pokemon/#{dir}#{obj[:type]}#{obj[:gender]}#{file obj[:obj]}.png"
    else
      "#{Rails.application.config.url}/v1/sprites/pokemon/#{dir}#{obj[:type]}#{file obj[:obj]}.png"
    end
  end
end
