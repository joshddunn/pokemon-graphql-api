Types::MoveDamageClassType = GraphQL::ObjectType.define do
  name "MoveDamageClass"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

end
