Types::PokemonSpriteGenderType = GraphQL::ObjectType.define do
  name "PokemonSpriteGender"
  description ""

  field :male, Types::PokemonSpriteOrientationType do
    resolve -> (obj, args, ctx) {
      obj.merge(gender: "")
    }
  end

  field :female, Types::PokemonSpriteOrientationType do
    resolve -> (obj, args, ctx) {
      obj.merge(gender: "female/")
    }
  end
end
