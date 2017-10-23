Types::ItemFlingEffectType = GraphQL::ObjectType.define do
  name "ItemFlingEffect"
  description ""

  field :id, !types.ID, "", property: :id
  field :name, !types.String, "", property: :name
end