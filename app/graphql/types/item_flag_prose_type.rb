Types::ItemFlagProseType = GraphQL::ObjectType.define do
  name "ItemFlagProse"
  description ""

  field :id, types.ID, "", property: :id
  field :itemFlag, Types::ItemFlagType, "", property: :item_flag
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name
  field :description, types.String, "", property: :description

end
