Types::ItemPocketType = GraphQL::ObjectType.define do
  name "ItemPocket"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

end
