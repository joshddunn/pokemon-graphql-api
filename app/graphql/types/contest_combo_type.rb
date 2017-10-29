Types::ContestComboType = GraphQL::ObjectType.define do
  name "ContestCombo"
  description ""

  field :id, !types.ID, "", property: :id
  field :firstMove, Types::FirstMoveType, "", property: :first_move
  field :secondMove, Types::SecondMoveType, "", property: :second_move

end
