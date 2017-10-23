Types::GenderType = GraphQL::ObjectType.define do
  name "Gender"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end
