Types::ItemFlagType = GraphQL::ObjectType.define do
  name "ItemFlag"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :itemFlagMaps, !types[Types::ItemFlagMapType], "", property: :item_flag_maps
  field :itemFlagProses, !types[Types::ItemFlagProseType], "", property: :item_flag_proses
end
