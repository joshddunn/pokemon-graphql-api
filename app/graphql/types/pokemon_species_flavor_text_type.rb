Types::PokemonSpeciesFlavorTextType = GraphQL::ObjectType.define do
  name "PokemonSpeciesFlavorText"
  description ""

  field :id, !types.ID, "", property: :id
  field :species, !types.Int, "", property: :species_id
  field :version, !types.Int, "", property: :version_id
  field :language, !types.Int, "", property: :language_id
  field :flavorText, !types.String, "", property: :flavor_text

end
