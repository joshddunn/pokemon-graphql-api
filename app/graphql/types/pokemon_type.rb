Types::PokemonType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Pokemon'

  # it has the following fields
  field :id, !types.ID
  field :identifier, !types.String, "The Pokemon's common name"
  field :species, Types::PokemonSpecyType, "The Pokemon's species information", property: :pokemon_specy
  field :height, !types.Int, "The Pokemon's height"
  field :weight, !types.Int, "The Pokemon's weight"
  field :baseExperience, !types.Int, property: :base_experience
  field :order, !types.Int
  field :isDefault, !types.Int, property: :is_default
end
