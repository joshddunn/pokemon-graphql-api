Types::PokemonSpriteType = GraphQL::ObjectType.define do
  name "PokemonSprite"
  description ""

  field :normal, Types::PokemonSpriteGenderType do
    resolve -> (obj, args, ctx) {
      obj.merge(type: "")
    }
  end

  field :shiny, Types::PokemonSpriteGenderType do
    resolve -> (obj, args, ctx) {
      obj.merge(type: "shiny/")
    }
  end

  field :silhouette, Types::PokemonSpriteGenderType do
    resolve -> (obj, args, ctx) {
      obj.merge(type: "silhouette/")
    }
  end
end
