Types::PokemonFormConnectionType = Types::PokemonFormType.define_connection do
  name "PokemonFormConnection"
  description ""

  field :totalCount do
    type types.Int
    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
