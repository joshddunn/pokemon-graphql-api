Types::PokemonConnectionType = Types::PokemonType.define_connection do
  name "PokemonConnection"
  description ""

  field :totalCount do
    type types.Int
    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
