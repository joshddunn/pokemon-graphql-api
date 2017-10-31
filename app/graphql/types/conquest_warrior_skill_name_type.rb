Types::ConquestWarriorSkillNameType = GraphQL::ObjectType.define do
  name "ConquestWarriorSkillName"
  description ""

  field :id, !types.ID, "", property: :id
  field :skill, Types::ConquestWarriorSkillType, "", property: :conquest_warrior_skill
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
