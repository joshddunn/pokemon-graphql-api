Types::TypeGameIndexType = GraphQL::ObjectType.define do
  name "TypeGameIndex"
  description ""

  field :id, !types.ID, "", property: :id
  field :type, !types.Int, "", property: :type_id
  field :generation, !types.Int, "", property: :generation_id
  field :gameIndex, !types.Int, "", property: :game_index
end
