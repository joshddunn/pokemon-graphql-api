Types::AbilityFlavorTextType = GraphQL::ObjectType.define do
  name "AbilityFlavorText"
  description ""

  field :id, types.ID, "", property: :id
  field :ability, Types::AbilityType, "", property: :ability
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :language, Types::LanguageType, "", property: :language
  field :flavorText, types.String, "", property: :flavor_text

end
