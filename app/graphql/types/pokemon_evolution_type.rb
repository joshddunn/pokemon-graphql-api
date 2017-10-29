Types::PokemonEvolutionType = GraphQL::ObjectType.define do
  name "PokemonEvolution"
  description ""

  field :id, !types.ID, "", property: :id
  field :evolvedSpecies, Types::EvolvedSpecyType, "", property: :evolved_specy
  field :evolutionTrigger, Types::EvolutionTriggerType, "", property: :evolution_trigger
  field :triggerItem, Types::TriggerItemType, "", property: :trigger_item
  field :minimumLevel, !types.Int, "", property: :minimum_level
  field :gender, Types::GenderType, "", property: :gender
  field :location, Types::LocationType, "", property: :location
  field :heldItem, Types::HeldItemType, "", property: :held_item
  field :timeOfDay, !types.String, "", property: :time_of_day
  field :knownMove, Types::MoveType, "", property: :move
  field :knownMoveType, Types::KnownMoveTypeType, "", property: :known_move_type
  field :minimumHappiness, !types.Int, "", property: :minimum_happiness
  field :minimumBeauty, !types.Int, "", property: :minimum_beauty
  field :minimumAffection, !types.Int, "", property: :minimum_affection
  field :relativePhysicalStats, !types.Int, "", property: :relative_physical_stats
  field :partySpecies, Types::PartySpecyType, "", property: :party_specy
  field :partyType, Types::PartyTypeType, "", property: :party_type
  field :tradeSpecies, Types::TradeSpecyType, "", property: :trade_specy
  field :needsOverworldRain, !types.Boolean, "", property: :needs_overworld_rain
  field :turnUpsideDown, !types.Boolean, "", property: :turn_upside_down

end
