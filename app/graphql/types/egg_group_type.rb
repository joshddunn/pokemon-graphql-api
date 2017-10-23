Types::EggGroupType = GraphQL::ObjectType.define do
  name "EggGroup"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
