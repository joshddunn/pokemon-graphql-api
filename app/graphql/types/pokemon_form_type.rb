Types::PokemonFormType = GraphQL::ObjectType.define do
  name "PokemonForm"
  description "Contains information about pokemon forms."

  field :id, types.ID, "Returns the id of the pokemon form.", property: :id
  field :identifier, types.String, "Returns the identifier of the pokemon form.", property: :identifier
  field :formIdentifier, types.String, "Returns the form identifier of the pokemon form.", property: :form_identifier
  field :pokemon, Types::PokemonType, "Returns the pokemon that is of this pokemon form.", property: :pokemon
  field :introducedInVersionGroup, Types::VersionGroupType, "Returns the version the pokemon form was introduced in.", property: :version_group
  field :isDefault, types.Boolean, "Returns whether the pokemon form is the default form.", property: :is_default
  field :isBattleOnly, types.Boolean, "Returns whether the pokemon form is only for battles.", property: :is_battle_only
  field :isMega, types.Boolean, "Returns whether the pokemon form is classified as a mega form.", property: :is_mega
  field :formOrder, types.Int, "Returns the order of the pokemon form.", property: :form_order
  field :order, types.Int, "Returns the order of the pokemon.", property: :order

  field :sprites, Types::PokemonSpriteType do
    description "Returns sprites for this pokemon form."
    resolve -> (obj, args, ctx) {
      {obj: obj, form: obj.form_identifier}
    }
  end
  field :pokemonFormGenerations, types[Types::PokemonFormGenerationType], "Returns an array of generations the form is found in.", property: :pokemon_form_generations
  field :pokemonFormNames, types[Types::PokemonFormNameType], "Returns an array of the names of the pokemon form.", property: :pokemon_form_names
  field :pokemonFormPokeathlonStats, types[Types::PokemonFormPokeathlonStatType], "Returns an array of the pokemon form's pokeathlon stats.", property: :pokemon_form_pokeathlon_stats
end
