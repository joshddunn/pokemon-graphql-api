Types::PokemonType = GraphQL::ObjectType.define do
  name "Pokemon"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :height, !types.Int, "", property: :height
  field :weight, !types.Int, "", property: :weight
  field :baseExperience, !types.Int, "", property: :base_experience
  field :order, !types.Int, "", property: :order
  field :isDefault, !types.Boolean, "", property: :is_default

end
