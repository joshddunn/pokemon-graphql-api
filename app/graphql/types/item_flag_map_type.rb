Types::ItemFlagMapType = GraphQL::ObjectType.define do
  name "ItemFlagMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :itemFlag, Types::ItemFlagType, "", property: :item_flag

end
