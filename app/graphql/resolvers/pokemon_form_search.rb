require 'search_object/plugin/graphql'

class Resolvers::PokemonFormSearch
  include SearchObject.module(:graphql)

  scope { PokemonForm.all }

  type Types::PokemonFormConnectionType

  PokemonFormFilter = GraphQL::InputObjectType.define do
    name 'PokemonFormFilter'

    argument :OR, -> { types[PokemonFormFilter] }

    argument :identifier, types.String
    argument :identifierLike, types.String
    argument :formIdentifier, types.String
    argument :isMega, types.Boolean
    argument :id, types.Int
  end

  option :filter, type: PokemonFormFilter, with: :apply_filter

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
    scope = PokemonForm.all

    scope = scope.where(identifier: value['identifier']) unless value['identifier'].nil?
    scope = scope.where("identifier LIKE ?", "#{value['identifierLike'].gsub(/[^0-9a-zA-Z\-]/, "")}%") unless value['identifierLike'].nil?
    scope = scope.where(form_identifier: value['formIdentifier']) unless value['formIdentifier'].nil?
    scope = scope.where(is_mega: value['isMega']) unless value['isMega'].nil?
    scope = scope.where(id: value['id']) unless value['id'].nil?

    branches << scope

    value['OR'].reduce(branches) { |s,v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
