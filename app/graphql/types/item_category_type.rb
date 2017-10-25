Types::ItemCategoryType = GraphQL::ObjectType.define do
  name "ItemCategory"
  description ""

  field :id, !types.ID, "", property: :id
  field :pocket, !types.Int, "", property: :pocket_id
  field :identifier, !types.String, "", property: :identifier

end
