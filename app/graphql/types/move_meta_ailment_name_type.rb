Types::MoveMetaAilmentNameType = GraphQL::ObjectType.define do
  name "MoveMetaAilmentName"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveMetaAilment, !types.Int, "", property: :move_meta_ailment_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end
