Types::ItemFlagMapType = GraphQL::ObjectType.define do
  name "ItemFlagMap"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :itemFlag, !types.Int, "", property: :item_flag_id
end
