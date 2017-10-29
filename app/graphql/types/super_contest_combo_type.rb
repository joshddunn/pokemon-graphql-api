Types::SuperContestComboType = GraphQL::ObjectType.define do
  name "SuperContestCombo"
  description ""

  field :id, !types.ID, "", property: :id
  field :firstMove, Types::SuperContestComboFirstMoveType, "", property: :super_contest_combo_first_move
  field :secondMove, Types::SuperContestComboSecondMoveType, "", property: :super_contest_combo_second_move

end
