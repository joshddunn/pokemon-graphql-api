Types::BerryFirmnessType = GraphQL::ObjectType.define do
  name "BerryFirmness"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

end
