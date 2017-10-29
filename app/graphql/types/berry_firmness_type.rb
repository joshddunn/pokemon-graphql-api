Types::BerryFirmnessType = GraphQL::ObjectType.define do
  name "BerryFirmness"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :firmness, Types::BerryType, "", property: :berries
  field :berryFirmness, Types::BerryFirmnessNameType, "", property: :berry_firmness_names
end
