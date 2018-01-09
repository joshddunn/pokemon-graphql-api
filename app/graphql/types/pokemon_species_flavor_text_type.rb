Types::PokemonSpeciesFlavorTextType = GraphQL::ObjectType.define do
  name "PokemonSpeciesFlavorText"
  description ""

  field :id, types.ID, "", property: :id
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :version, Types::VersionType, "", property: :version
  field :language, Types::LanguageType, "", property: :language
  field :flavorText, types.String, "", property: :flavor_text

end
