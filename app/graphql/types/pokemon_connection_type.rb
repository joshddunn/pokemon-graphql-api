Types::PokemonConnectionType = Types::PokemonType.define_connection do
  name "PokemonConnection"
  description "Returns paginated information about pokemon."

  field :totalCount do
    description "Returns the total number of nodes found by the query."
    type types.Int

    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
