Types::EncounterMethodType = GraphQL::ObjectType.define do
  name "EncounterMethod"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :order, !types.Int, "", property: :order

end
