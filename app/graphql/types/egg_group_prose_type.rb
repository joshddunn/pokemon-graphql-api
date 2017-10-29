Types::EggGroupProseType = GraphQL::ObjectType.define do
  name "EggGroupProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :eggGroup, Types::EggGroupType, "", property: :egg_group
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
