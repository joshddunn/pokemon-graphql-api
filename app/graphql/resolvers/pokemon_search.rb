require 'search_object/plugin/graphql'

class Resolvers::PokemonSearch
  include SearchObject.module(:graphql)

  scope { Pokemon.all }

  type Types::PokemonConnectionType

  PokemonFilter = GraphQL::InputObjectType.define do
    name 'PokemonFilter'

    argument :OR, -> { types[PokemonFilter] }

    argument :identifier, types.String
    # argument :identifierContains, types[types.String]
    # argument :identifierNotContains, types[types.String]

    # argument :heightGreaterThan, types.Int
    # argument :heightLessThan, types.Int
    # argument :height, types.Int

    # argument :weightGreaterThan, types.Int
    # argument :weightLessThan, types.Int
    # argument :weight, types.Int

    # argument :isDefault, types.Boolean
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

    # if !value['identifierContains'].nil?
    #   value['identifierContains'].each do |term|
    #     scope = scope.where("identifier LIKE ?", "%#{term}%") 
    #   end
    # end

    # if !value['identifierNotContains'].nil?
    #   value['identifierNotContains'].each do |term|
    #     scope = scope.where("identifier NOT LIKE ?", "%#{term}%") 
    #   end
    # end

    # scope = scope.where("height > ?", value['heightGreaterThan']) unless value['heightGreaterThan'].nil?
    # scope = scope.where("height < ?", value['heightLessThan']) unless value['heightLessThan'].nil?
    # scope = scope.where("height = ?", value['height']) unless value['height'].nil?

    # scope = scope.where("weight > ?", value['weightGreaterThan']) unless value['weightGreaterThan'].nil?
    # scope = scope.where("weight < ?", value['weightLessThan']) unless value['weightLessThan'].nil?
    # scope = scope.where("weight = ?", value['weight']) unless value['weight'].nil?

    # scope = scope.where("is_default": value['isDefault']) unless value['isDefault'].nil?

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
