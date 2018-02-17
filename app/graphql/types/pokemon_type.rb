Types::PokemonType = GraphQL::ObjectType.define do
  name "Pokemon"
  description "Contains information about pokemon."

  field :id, types.ID, "Returns the id of the pokemon.", property: :id
  field :identifier, types.String, "Returns the identifier of the pokemon.", property: :identifier
  field :species, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :height, types.Float, "Returns the height of the pokemon in meters (m)." do 
    resolve -> (obj, args, ctx) {
      obj.height / 10.0 
    }
  end
  field :weight, types.Float, "Returns the weight of the pokemon in kilograms (kg)." do
    resolve -> (obj, args, ctx) {
      obj.weight / 10.0
    }
  end
  field :baseExperience, types.Int, "Returns the base experience of the pokemon.", property: :base_experience
  field :order, types.Int, "Returns the pokemon's position in the list of all pokemon.", property: :order
  field :isDefault, types.Boolean, "Returns whether the pokemon is the default form. For example, Charizard is default, but Mega Charizard X is not.", property: :is_default

  field :encounters, types[Types::EncounterType], "Returns an array of encounters the pokemon is in.", property: :encounters
  field :pokemonAbilities, types[Types::PokemonAbilityType], "Returns an array of the abilities the pokemon could possess.", property: :pokemon_abilities
  field :pokemonForms, types[Types::PokemonFormType], "Returns an array of the forms the pokemon has.", property: :pokemon_forms
  field :pokemonGameIndices, types[Types::PokemonGameIndexType], "Returns an array of the index of the pokemon in other games.", property: :pokemon_game_indices
  field :pokemonItems, types[Types::PokemonItemType], "Returns an array of items the pokemon could have when acquired.", property: :pokemon_items
  field :pokemonMoves, types[Types::PokemonMoveType], "Returns an array of the moves the pokemon learns.", property: :pokemon_moves
  field :pokemonStats, types[Types::PokemonStatType], "Returns an array of the pokemon's stats.", property: :pokemon_stats
  field :pokemonTypes, types[Types::PokemonTypeType], "Returns an array of the pokemon's type information.", property: :pokemon_types

  # this is my best guess for passing graphql query structure to child types...
  field :sprites, Types::PokemonSpriteType do
    description "Returns a url to the requested pokemon's sprite."
    resolve -> (obj, args, ctx) {
      {obj: obj}
    }
  end

  field :englishName, types.String do
    description "Returns the formatted english name of this pokemon"
    resolve -> (obj, args, ctx) {
      form_name = obj.pokemon_forms.map { |e| e.pokemon_form_names.joins(:language).find_by("languages.identifier": "en") }.first
      return form_name.form_name if form_name.present?

      obj.pokemon_specy.pokemon_species_names.joins(:language).find_by("languages.identifier": "en").name
    }
  end
end
