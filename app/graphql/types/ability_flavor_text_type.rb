Types::AbilityFlavorTextType = GraphQL::ObjectType.define do
  name "AbilityFlavorText"
  description ""

  field :id, !types.ID, "", property: :id
  field :ability, !types.Int, "", property: :ability_id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :language, !types.Int, "", property: :language_id
  field :flavorText, !types.String, "", property: :flavor_text
end