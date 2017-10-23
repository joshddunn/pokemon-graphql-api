Types::ItemPocketNameType = GraphQL::ObjectType.define do
  name "ItemPocketName"
  description ""

  field :id, !types.ID, "", property: :id
  field :itemPocket, !types.Int, "", property: :item_pocket_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end