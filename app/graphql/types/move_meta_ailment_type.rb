Types::MoveMetaAilmentType = GraphQL::ObjectType.define do
  name "MoveMetaAilment"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
