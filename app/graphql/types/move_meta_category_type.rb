Types::MoveMetaCategoryType = GraphQL::ObjectType.define do
  name "MoveMetaCategory"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :metaCategory, Types::MoveMetumType, "", property: :move_meta
  field :moveMetaCategory, Types::MoveMetaCategoryProseType, "", property: :move_meta_category_proses
end
