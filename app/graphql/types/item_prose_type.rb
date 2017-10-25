Types::ItemProseType = GraphQL::ObjectType.define do
  name "ItemProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :item, !types.Int, "", property: :item_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :shortEffect, !types.String, "", property: :short_effect
  field :effect, !types.String, "", property: :effect

end
