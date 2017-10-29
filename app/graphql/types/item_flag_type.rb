Types::ItemFlagType = GraphQL::ObjectType.define do
  name "ItemFlag"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier

  field :itemFlag, Types::ItemFlagProseType, "", property: :item_flag_proses
end
