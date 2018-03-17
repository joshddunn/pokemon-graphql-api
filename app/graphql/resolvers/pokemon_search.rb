require 'search_object/plugin/graphql'

class Resolvers::PokemonSearch
  include SearchObject.module(:graphql)

  scope { Pokemon.all }

  type Types::PokemonConnectionType

  PokemonFilter = GraphQL::InputObjectType.define do
    name 'PokemonFilter'

    argument :OR, -> { types[PokemonFilter] }

    argument :identifier, types.String
    argument :identifierLike, types.String, description: "Will return results whose identifier is like this string. Single wildcard."
  end

  option :filter, type: PokemonFilter, with: :apply_filter
  option :order, type: types[types.String], with: :apply_order

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
    scope = Pokemon.all

    scope = scope.where(identifier: value['identifier']) unless value['identifier'].nil?
    scope = scope.where("identifier like ?", "#{value['identifierLike'].gsub(/[^0-9a-zA-Z\-]/, "")}%") unless value['identifierLike'].nil?

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
