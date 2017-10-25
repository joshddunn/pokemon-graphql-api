Types::NaturePokeathlonStatType = GraphQL::ObjectType.define do
  name "NaturePokeathlonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, !types.Int, "", property: :nature_id
  field :pokeathlonStat, !types.Int, "", property: :pokeathlon_stat_id
  field :maxChange, !types.Int, "", property: :max_change

end
