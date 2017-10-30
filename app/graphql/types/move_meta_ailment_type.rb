Types::MoveMetaAilmentType = GraphQL::ObjectType.define do
  name "MoveMetaAilment"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :moveMeta, !types[Types::MoveMetumType], "", property: :move_meta
  field :moveMetaAilmentNames, !types[Types::MoveMetaAilmentNameType], "", property: :move_meta_ailment_names
end
