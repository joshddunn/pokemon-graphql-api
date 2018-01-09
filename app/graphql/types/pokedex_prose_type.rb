Types::PokedexProseType = GraphQL::ObjectType.define do
  name "PokedexProse"
  description ""

  field :id, types.ID, "", property: :id
  field :pokedex, Types::PokedexType, "", property: :pokedex
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, types.String, "", property: :name
  field :description, types.String, "", property: :description

end
