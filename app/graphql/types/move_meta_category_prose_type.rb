Types::MoveMetaCategoryProseType = GraphQL::ObjectType.define do
  name "MoveMetaCategoryProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveMetaCategory, Types::MoveMetaCategoryType, "", property: :move_meta_category
  field :localLanguage, Types::LanguageType, "", property: :language
  field :description, !types.String, "", property: :description

end
