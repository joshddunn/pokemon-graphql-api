Types::ConquestKingdomNameType = GraphQL::ObjectType.define do
  name 'ConquestKingdomName'
  description ''

  field :id, types.ID, '', property: :id
  field :kingdom, Types::ConquestKingdomType, '', property: :conquest_kingdom
  field :localLanguage, Types::LanguageType, '', property: :language
  field :name, types.String, '', property: :name
end
