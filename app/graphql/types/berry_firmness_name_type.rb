Types::BerryFirmnessNameType = GraphQL::ObjectType.define do
  name "BerryFirmnessName"
  description ""

  field :id, !types.ID, "", property: :id
  field :berryFirmness, Types::BerryFirmnessType, "", property: :berry_firmness
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
