Types::PokemonFormType = GraphQL::ObjectType.define do
  name "PokemonForm"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :formIdentifier, !types.String, "", property: :form_identifier
  field :pokemon, Types::PokemonType, "", property: :pokemon
  field :introducedInVersionGroup, Types::VersionGroupType, "", property: :version_group
  field :isDefault, !types.Boolean, "", property: :is_default
  field :isBattleOnly, !types.Boolean, "", property: :is_battle_only
  field :isMega, !types.Boolean, "", property: :is_mega
  field :formOrder, !types.Int, "", property: :form_order
  field :order, !types.Int, "", property: :order

  field :pokemonFormGenerations, !types[Types::PokemonFormGenerationType], "", property: :pokemon_form_generations
  field :pokemonFormNames, !types[Types::PokemonFormNameType], "", property: :pokemon_form_names
  field :pokemonFormPokeathlonStats, !types[Types::PokemonFormPokeathlonStatType], "", property: :pokemon_form_pokeathlon_stats
end
