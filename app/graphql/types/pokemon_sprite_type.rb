Types::PokemonSpriteType = GraphQL::ObjectType.define do
  name "PokemonSprite"
  description ""

  field :normal, Types::PokemonSpriteGenderType do
    resolve -> (obj, args, ctx) {
      obj[:type] = ""
      obj
    }
  end

  field :shiny, Types::PokemonSpriteGenderType do
    resolve -> (obj, args, ctx) {
      obj[:type] = "shiny/"
      obj
    }
  end
end
