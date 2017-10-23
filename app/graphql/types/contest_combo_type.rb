Types::ContestComboType = GraphQL::ObjectType.define do
  name "ContestCombo"
  description ""

  field :id, !types.ID, "", property: :id
  field :firstMove, !types.Int, "", property: :first_move_id
  field :secondMove, !types.Int, "", property: :second_move_id
end
