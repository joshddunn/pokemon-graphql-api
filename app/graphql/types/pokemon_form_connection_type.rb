Types::PokemonFormConnectionType = Types::PokemonFormType.define_connection do
  name "PokemonFormConnection"
  description "Returns paginated information about pokemon forms."

  field :totalCount do
    description "Returns the total number of nodes found by the query."
    type types.Int
    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
