Types::ItemPocketNameType = GraphQL::ObjectType.define do
  name "ItemPocketName"
  description ""

  field :id, types.ID, "", property: :id
  field :itemPocket, Types::ItemPocketType, "", property: :item_pocket
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
