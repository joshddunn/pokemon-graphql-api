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

  field :encounters, !types[Types::EncounterType], "", property: :encounters
  field :pokemonAbilities, !types[Types::PokemonAbilityType], "", property: :pokemon_abilities
  field :pokemonForms, !types[Types::PokemonFormType], "", property: :pokemon_forms
  field :pokemonGameIndices, !types[Types::PokemonGameIndexType], "", property: :pokemon_game_indices
  field :pokemonItems, !types[Types::PokemonItemType], "", property: :pokemon_items
  field :pokemonMoves, !types[Types::PokemonMoveType], "", property: :pokemon_moves
  field :pokemonStats, !types[Types::PokemonStatType], "", property: :pokemon_stats
  field :pokemonTypes, !types[Types::PokemonTypeType], "", property: :pokemon_types

  # this is my best guess for passing graphql query structure to child types...
  field :sprites, Types::PokemonSpriteType do
    resolve -> (obj, args, ctx) {
      {obj: obj}
    }
  end
end
