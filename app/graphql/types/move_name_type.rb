Types::MoveNameType = GraphQL::ObjectType.define do
  name "MoveName"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
end