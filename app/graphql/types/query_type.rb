Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  
  field :Pokemon, !types[Types::PokemonType] do
    argument :identifier, types.String, default_value: nil
    argument :id, types.Int, default_value: nil

    resolve -> (obj, args, ctx) { 
      source = Pokemon.all
      source = source.where(id: args[:id]) if args[:id]
      source = source.where(identifier: args[:identifier]) if args[:identifier]
      source
    }
  end
end
