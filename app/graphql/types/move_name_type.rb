Types::MoveNameType = GraphQL::ObjectType.define do
  name "MoveName"
  description ""

  field :id, types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name

end
