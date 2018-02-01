Types::PokemonSpecyConnectionType = Types::PokemonSpecyType.define_connection do
  name "PokemonSpecyConnection"
  description "Returns information about pokemon species."

  field :totalCount do
    type types.Int
    description "Returns the total number of nodes found by the query."

    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
