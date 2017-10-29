Types::AbilityType = GraphQL::ObjectType.define do
  name "Ability"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :isMainSeries, !types.Boolean, "", property: :is_main_series

  field :ability, Types::PokemonAbilityType, "", property: :pokemon_abilities
end
