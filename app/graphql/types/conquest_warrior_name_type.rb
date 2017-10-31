Types::ConquestWarriorNameType = GraphQL::ObjectType.define do
  name "ConquestWarriorName"
  description ""

  field :id, !types.ID, "", property: :id
  field :warrior, Types::ConquestWarriorType, "", property: :conquest_warrior
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
