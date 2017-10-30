Types::PokemonEvolutionType = GraphQL::ObjectType.define do
  name "PokemonEvolution"
  description ""

  field :id, !types.ID, "", property: :id
  field :evolvedSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :evolutionTrigger, Types::EvolutionTriggerType, "", property: :evolution_trigger
  field :triggerItem, Types::ItemType, "", property: :item
  field :minimumLevel, !types.Int, "", property: :minimum_level
  field :gender, Types::GenderType, "", property: :gender
  field :location, Types::LocationType, "", property: :location
  field :heldItem, Types::ItemType, "", property: :item
  field :timeOfDay, !types.String, "", property: :time_of_day
  field :knownMove, Types::MoveType, "", property: :move
  field :knownMoveType, Types::TypeType, "", property: :type
  field :minimumHappiness, !types.Int, "", property: :minimum_happiness
  field :minimumBeauty, !types.Int, "", property: :minimum_beauty
  field :minimumAffection, !types.Int, "", property: :minimum_affection
  field :relativePhysicalStats, !types.Int, "", property: :relative_physical_stats
  field :partySpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :partyType, Types::TypeType, "", property: :type
  field :tradeSpecies, Types::PokemonSpecyType, "", property: :pokemon_specy
  field :needsOverworldRain, !types.Boolean, "", property: :needs_overworld_rain
  field :turnUpsideDown, !types.Boolean, "", property: :turn_upside_down

end
