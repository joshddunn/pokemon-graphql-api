Types::BerryFirmnessType = GraphQL::ObjectType.define do
  name "BerryFirmness"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :berries, !types[Types::BerryType], "", property: :berries
  field :berryFirmnessNames, !types[Types::BerryFirmnessNameType], "", property: :berry_firmness_names
end
