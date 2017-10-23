Types::ItemFlavorTextType = GraphQL::ObjectType.define do
  name "ItemFlavorText"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :language, !types.Int, "", property: :language_id
  field :flavorText, !types.String, "", property: :flavor_text
end