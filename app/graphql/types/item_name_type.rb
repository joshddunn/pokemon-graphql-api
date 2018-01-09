Types::ItemNameType = GraphQL::ObjectType.define do
  name "ItemName"
  description ""

  field :id, types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
