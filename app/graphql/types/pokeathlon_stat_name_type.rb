Types::PokeathlonStatNameType = GraphQL::ObjectType.define do
  name "PokeathlonStatName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokeathlonStat, !types.Int, "", property: :pokeathlon_stat_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name

end
