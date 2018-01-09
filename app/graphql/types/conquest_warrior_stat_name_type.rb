Types::ConquestWarriorStatNameType = GraphQL::ObjectType.define do
  name "ConquestWarriorStatName"
  description ""

  field :id, types.ID, "", property: :id
  field :warriorStat, Types::ConquestWarriorStatType, "", property: :conquest_warrior_stat
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
