Types::MoveMetaCategoryType = GraphQL::ObjectType.define do
  name "MoveMetaCategory"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
