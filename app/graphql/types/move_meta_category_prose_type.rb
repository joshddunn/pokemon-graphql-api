Types::MoveMetaCategoryProseType = GraphQL::ObjectType.define do
  name "MoveMetaCategoryProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveMetaCategory, !types.Int, "", property: :move_meta_category_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :description, !types.String, "", property: :description

end
