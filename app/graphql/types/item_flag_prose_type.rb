Types::ItemFlagProseType = GraphQL::ObjectType.define do
  name "ItemFlagProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :itemFlag, !types.Int, "", property: :item_flag_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
