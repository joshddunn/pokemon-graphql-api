# defines a new GraphQL type
Types::PokemonType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Pokemon'

  # it has the following fields
  field :id, !types.ID
  field :identifier, !types.String
  field :species, ->{ Types::PokemonSpeciesType }, property: :pokemon_specy
  field :height, !types.Int
  field :weight, !types.Int
  field :baseExperience, !types.Int, property: :base_experience
  field :order, !types.Int
  field :isDefault, !types.Int, property: :is_default
end
