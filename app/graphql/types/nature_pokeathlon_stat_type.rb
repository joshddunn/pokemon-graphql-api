Types::NaturePokeathlonStatType = GraphQL::ObjectType.define do
  name "NaturePokeathlonStat"
  description ""

  field :id, !types.ID, "", property: :id
  field :nature, Types::NatureType, "", property: :nature
  field :pokeathlonStat, Types::PokeathlonStatType, "", property: :pokeathlon_stat
  field :maxChange, !types.Int, "", property: :max_change

end
