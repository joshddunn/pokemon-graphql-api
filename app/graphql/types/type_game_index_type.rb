Types::TypeGameIndexType = GraphQL::ObjectType.define do
  name "TypeGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :type, Types::TypeType, "", property: :type
  field :generation, Types::GenerationType, "", property: :generation
  field :gameIndex, !types.Int, "", property: :game_index

end
