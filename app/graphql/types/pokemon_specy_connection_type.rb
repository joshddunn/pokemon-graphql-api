Types::PokemonSpecyConnectionType = Types::PokemonSpecyType.define_connection do
  name "PokemonSpecyConnection"
  description ""

  field :totalCount do
    type types.Int

    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
