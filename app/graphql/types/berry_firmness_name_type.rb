Types::BerryFirmnessNameType = GraphQL::ObjectType.define do
  name "BerryFirmnessName"
  description ""

  field :id, !types.ID, "", property: :id
  field :berryFirmness, !types.Int, "", property: :berry_firmness_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
