Types::LanguageType = GraphQL::ObjectType.define do
  name "Language"
  description ""

  field :id, !types.ID, "", property: :id
  field :iso639, !types.String, "", property: :iso639
  field :iso3166, !types.String, "", property: :iso3166
  field :identifier, !types.String, "", property: :identifier
  field :official, !types.Boolean, "", property: :official
  field :order, !types.Int, "", property: :order

  field :localLanguage, Types::VersionNameType, "", property: :version_names
  field :language, Types::PokemonSpeciesFlavorTextType, "", property: :pokemon_species_flavor_texts
end
