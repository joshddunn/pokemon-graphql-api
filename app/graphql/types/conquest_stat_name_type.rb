Types::ConquestStatNameType = GraphQL::ObjectType.define do
  name "ConquestStatName"
  description ""

  field :id, types.ID, "", property: :id
  field :conquestStat, Types::ConquestStatType, "", property: :conquest_stat
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
