require 'search_object/plugin/graphql'

class Resolvers::PokemonSearch < GraphQL::Function
  include SearchObject.module(:graphql)

  scope { Pokemon.all }

  type !types[Types::PokemonType]

  PokemonFilter = GraphQL::InputObjectType.define do
    name 'PokemonFilter'

    argument :OR, -> { types[PokemonFilter] }
    argument :identifierContains, types.String
  end

  option :filter, type: PokemonFilter, with: :apply_filter

  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a,b| a.or(b) }
    scope.merge branches
  end

  def normalize_filters(value, branches = [])
    scope = Pokemon.all
    scope = scope.where('identifier LIKE ?', "%#{value['identifierContains']}%") if value['identifierContains']

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
