Types::MoveFlavorTextType = GraphQL::ObjectType.define do
  name "MoveFlavorText"
  description ""

  field :id, !types.ID, "", property: :id
  field :move, !types.Int, "", property: :move_id
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :language, !types.Int, "", property: :language_id
  field :flavorText, !types.String, "", property: :flavor_text
end