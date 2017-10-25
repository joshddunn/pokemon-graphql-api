Types::VersionGroupType = GraphQL::ObjectType.define do
  name "VersionGroup"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, !types.Int, "", property: :generation_id
  field :order, !types.Int, "", property: :order

end
