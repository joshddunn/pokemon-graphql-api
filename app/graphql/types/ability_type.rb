Types::AbilityType = GraphQL::ObjectType.define do
  name "Ability"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :isMainSeries, types.Boolean, "", property: :is_main_series

  field :abilityChangelog, types[Types::AbilityChangelogType], "", property: :ability_changelog
  field :abilityFlavorTexts, types[Types::AbilityFlavorTextType], "", property: :ability_flavor_texts
  field :abilityNames, types[Types::AbilityNameType], "", property: :ability_names
  field :abilityProse, types[Types::AbilityProseType], "", property: :ability_prose
  field :pokemonAbilities, types[Types::PokemonAbilityType], "", property: :pokemon_abilities
  field :conquestPokemonAbilities, types[Types::ConquestPokemonAbilityType], "", property: :conquest_pokemon_abilities
end
