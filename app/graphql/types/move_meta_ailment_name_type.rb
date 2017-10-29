Types::MoveMetaAilmentNameType = GraphQL::ObjectType.define do
  name "MoveMetaAilmentName"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveMetaAilment, Types::MoveMetaAilmentType, "", property: :move_meta_ailment
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
