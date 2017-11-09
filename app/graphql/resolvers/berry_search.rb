require 'search_object/plugin/graphql'

class Resolvers::BerrySearch
  include SearchObject.module(:graphql)

  scope { Berry.all }

  type Types::BerryConnectionType

  BerryFilter = GraphQL::InputObjectType.define do
    name 'BerryFilter'

    argument :OR, -> { types[BerryFilter] }

    argument :identifier, types.String
    argument :identifierLike, types.String
    argument :firmness, types.String
  end

  option :filter, type: BerryFilter, with: :apply_filter
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
    scope = Berry.all

    scope = scope.joins(:item).where("items.identifier": value['identifier']) unless value['identifier'].nil?
    scope = scope.joins(:item).where("items.identifier like ?", "%#{value['identifierLike']}%") unless value['identifierLike'].nil?
    scope = scope.joins(:berry_firmness).where("berry_firmnesses.identifier": value['firmness']) unless value['firmness'].nil?
    
    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
