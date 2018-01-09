Types::MoveMetaCategoryType = GraphQL::ObjectType.define do
  name "MoveMetaCategory"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :moveMeta, types[Types::MoveMetumType], "", property: :move_meta
  field :moveMetaCategoryProses, types[Types::MoveMetaCategoryProseType], "", property: :move_meta_category_proses
end
