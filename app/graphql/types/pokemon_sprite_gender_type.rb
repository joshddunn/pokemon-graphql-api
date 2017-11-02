Types::PokemonSpriteGenderType = GraphQL::ObjectType.define do
  name "PokemonSpriteGender"
  description ""

  field :male, Types::PokemonSpriteOrientationType do
    resolve -> (obj, args, ctx) {
      obj[:gender] = ""
      obj
    }
  end

  field :female, Types::PokemonSpriteOrientationType do
    resolve -> (obj, args, ctx) {
      obj[:gender] = "female/"
      obj
    }
  end
end
