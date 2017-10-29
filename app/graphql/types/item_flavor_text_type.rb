Types::ItemFlavorTextType = GraphQL::ObjectType.define do
  name "ItemFlavorText"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :language, Types::LanguageType, "", property: :language
  field :flavorText, !types.String, "", property: :flavor_text

end
