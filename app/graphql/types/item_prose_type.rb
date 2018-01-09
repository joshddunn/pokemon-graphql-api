Types::ItemProseType = GraphQL::ObjectType.define do
  name "ItemProse"
  description ""

  field :id, types.ID, "", property: :id
  field :item, Types::ItemType, "", property: :item
  field :localLanguage, Types::LanguageType, "", property: :language
  field :shortEffect, types.String, "", property: :short_effect
  field :effect, types.String, "", property: :effect

end
