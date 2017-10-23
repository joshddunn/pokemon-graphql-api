Types::PokemonEvolutionType = GraphQL::ObjectType.define do
  name "PokemonEvolution"
  description ""

  field :id, !types.ID, "", property: :id
  field :evolvedSpecies, !types.Int, "", property: :evolved_species_id
  field :evolutionTrigger, !types.Int, "", property: :evolution_trigger_id
  field :triggerItem, !types.Int, "", property: :trigger_item_id
  field :minimumLevel, !types.Int, "", property: :minimum_level
  field :gender, !types.Int, "", property: :gender_id
  field :location, !types.Int, "", property: :location_id
  field :heldItem, !types.Int, "", property: :held_item_id
  field :timeOfDay, !types.String, "", property: :time_of_day
  field :knownMove, !types.Int, "", property: :known_move_id
  field :knownMoveType, !types.Int, "", property: :known_move_type_id
  field :minimumHappiness, !types.Int, "", property: :minimum_happiness
  field :minimumBeauty, !types.Int, "", property: :minimum_beauty
  field :minimumAffection, !types.Int, "", property: :minimum_affection
  field :relativePhysicalStats, !types.Int, "", property: :relative_physical_stats
  field :partySpecies, !types.Int, "", property: :party_species_id
  field :partyType, !types.Int, "", property: :party_type_id
  field :tradeSpecies, !types.Int, "", property: :trade_species_id
  field :needsOverworldRain, !types.Boolean, "", property: :needs_overworld_rain
  field :turnUpsideDown, !types.Boolean, "", property: :turn_upside_down
end
