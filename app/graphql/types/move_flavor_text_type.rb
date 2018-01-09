Types::MoveFlavorTextType = GraphQL::ObjectType.define do
  name "MoveFlavorText"
  description ""

  field :id, types.ID, "", property: :id
  field :move, Types::MoveType, "", property: :move
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :language, Types::LanguageType, "", property: :language
  field :flavorText, types.String, "", property: :flavor_text

end
