require 'search_object/plugin/graphql'

class Resolvers::PokemonSearch
  include SearchObject.module(:graphql)

  scope { Pokemon.all }

  type Types::PokemonConnectionType

  PokemonFilter = GraphQL::InputObjectType.define do
    name 'PokemonFilter'

    argument :OR, -> { types[PokemonFilter] }
    # implement and and not
    argument :identifier, types.String
    argument :identifierContains, types[types.String]
    argument :identifierNotContains, types[types.String]

    argument :heightGreaterThan, types.Int
    argument :heightLessThan, types.Int
    argument :height, types.Int

    argument :weightGreaterThan, types.Int
    argument :weightLessThan, types.Int
    argument :weight, types.Int

    argument :limit, types.Int
  end

  option :filter, type: PokemonFilter, with: :apply_filter
  option :limit, type: types.Int, with: :apply_limit
  option :offset, type: types.Int, with: :apply_offset
  option :order, type: types[types.String], with: :apply_order

  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a,b| a.or(b) }
    scope.merge branches
  end

  def apply_limit(scope, value)
    scope.limit(value)
  end

  def apply_offset(scope, value)
    scope.offset(value)
  end

  def apply_order(scope, value)
    value.each do |v|
      scope = scope.order(v)
    end
    scope
  end

  def normalize_filters(value, branches = [])
    scope = Pokemon.all

    scope = scope.where(identifier: value['identifier']) if value['identifier']

    if value['identifierContains']
      value['identifierContains'].each do |term|
        scope = scope.where("identifier LIKE ?", "%#{term}%") 
      end
    end

    if value['identifierNotContains']
      value['identifierNotContains'].each do |term|
        scope = scope.where("identifier NOT LIKE ?", "%#{term}%") 
      end
    end

    scope = scope.where("height > ?", value['heightGreaterThan']) if value['heightGreaterThan']
    scope = scope.where("height < ?", value['heightLessThan']) if value['heightLessThan']
    scope = scope.where("height = ?", value['height']) if value['height']

    scope = scope.where("weight > ?", value['weightGreaterThan']) if value['weightGreaterThan']
    scope = scope.where("weight < ?", value['weightLessThan']) if value['weightLessThan']
    scope = scope.where("weight = ?", value['weight']) if value['weight']

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
