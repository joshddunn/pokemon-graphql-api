Types::PokedexProseType = GraphQL::ObjectType.define do
  name "PokedexProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :pokedex, !types.Int, "", property: :pokedex_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :name, !types.String, "", property: :name
  field :description, !types.String, "", property: :description
end