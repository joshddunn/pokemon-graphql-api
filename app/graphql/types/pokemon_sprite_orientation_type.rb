Types::PokemonSpriteOrientationType = GraphQL::ObjectType.define do
  name "PokemonSpriteOrientation"
  description ""

  field :front, types.String do
    resolve -> (obj, args, ctx) {
      if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
        "#{Rails.application.config.url}/sprites/pokemon/#{obj[:type]}#{obj[:gender]}#{obj[:file]}.png"
      else
        ""
      end
    }
  end

  field :back, types.String do
    resolve -> (obj, args, ctx) {
      if obj[:gender] == "" or (obj[:gender].include? "female" and obj[:obj].pokemon_specy.has_gender_differences)
        "#{Rails.application.config.url}/sprites/pokemon/back/#{obj[:type]}#{obj[:gender]}#{obj[:file]}.png"
      else
        ""
      end
    }
  end
end
