Types::RegionNameType = GraphQL::ObjectType.define do
  name "RegionName"
  description ""

  field :id, types.ID, "", property: :id
  field :region, Types::RegionType, "", property: :region
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
