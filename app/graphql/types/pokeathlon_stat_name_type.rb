Types::PokeathlonStatNameType = GraphQL::ObjectType.define do
  name "PokeathlonStatName"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokeathlonStat, Types::PokeathlonStatType, "", property: :pokeathlon_stat
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name

end
