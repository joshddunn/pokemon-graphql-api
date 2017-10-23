Types::RegionNameType = GraphQL::ObjectType.define do
  name "RegionName"
  description ""

  field :id, !types.ID, "", property: :id
  field :region, !types.Int, "", property: :region_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end