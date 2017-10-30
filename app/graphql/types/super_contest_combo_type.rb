Types::SuperContestComboType = GraphQL::ObjectType.define do
  name "SuperContestCombo"
  description ""

  field :id, !types.ID, "", property: :id
  field :firstMove, Types::MoveType, "", property: :move
  field :secondMove, Types::MoveType, "", property: :move

end
