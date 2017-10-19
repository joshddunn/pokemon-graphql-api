Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  
  field :Pokemon, !types[Types::PokemonType] do
    description "Pokemon!"

    argument :identifier, types.String, default_value: nil
    argument :id, types.Int, default_value: nil

    resolve -> (obj, args, ctx) { 
      source = Pokemon.all
      source = source.where(id: args[:id]) if args[:id]
      source = source.where(identifier: args[:identifier]) if args[:identifier]
      source
    }
  end

  field :PokemonSpecies, !types[Types::PokemonSpecyType] do
    description "Pokemon Species!"

    resolve -> (obj, args, ctx) { 
      PokemonSpecy.all
    }
  end

  field :Berries, !types[Types::BerryType] do
    description "Berries!"

    resolve -> (obj, args, ctx) { 
      Berry.all
    }
  end

  field :PokemonColors, !types[Types::PokemonColorType] do
    description "Pokemon Colors!"

    resolve -> (obj, args, ctx) { 
      PokemonColor.all
    }
  end
end
