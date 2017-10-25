Types::EggGroupProseType = GraphQL::ObjectType.define do
  name "EggGroupProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :eggGroup, !types.Int, "", property: :egg_group_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name

end
