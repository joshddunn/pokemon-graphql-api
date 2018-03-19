require 'search_object/plugin/graphql'

class Resolvers::PokemonSpecySearch
  include SearchObject.module(:graphql)

  scope { PokemonSpecy.all }

  type Types::PokemonSpecyConnectionType

  PokemonSpecyFilter = GraphQL::InputObjectType.define do
    name 'PokemonSpecyFilter'

    argument :OR, -> { types[PokemonSpecyFilter] }

    argument :identifier, types.String, description: "Filter Pokemon species to those that have a given identifier." 
    argument :id, types.Int, description: "Filter Pokemon species to those that have a given id."
  end

  option :filter, type: PokemonSpecyFilter, with: :apply_filter

  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a,b| a.or(b) }
    scope.merge branches
  end

  def apply_order(scope, value)
    value.each do |v|
      scope = scope.order(v)
    end
    scope
  end

  def normalize_filters(value, branches = [])
    scope = PokemonSpecy.all

    scope = scope.where(identifier: value['identifier']) unless value['identifier'].nil?
    scope = scope.where(id: value['id']) unless value['id'].nil?

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
