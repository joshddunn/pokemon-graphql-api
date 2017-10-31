Types::ConquestMoveRangeProseType = GraphQL::ObjectType.define do
  name "ConquestMoveRangeProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :conquestMoveRange, Types::ConquestMoveRangeType, "", property: :conquest_move_range
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description

end
