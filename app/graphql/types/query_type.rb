Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description ""
  
  # ###################
  # Berry access points
  # ###################
  
  field :Berries, !types[Types::BerryType] do
    description "Berries!"

    resolve -> (obj, args, ctx) { 
      Berry.all
    }
  end

  field :BerryFirmnesses, !types[Types::BerryFirmnessType] do
    description "Berry Firmness!"

    resolve -> (obj, args, ctx) { 
      BerryFirmness.all
    }
  end

  field :BerryFlavors, !types[Types::BerryFlavorType] do
    description "Berry Flavor!"

    resolve -> (obj, args, ctx) { 
      BerryFlavor.all
    }
  end

  # #####################
  # Contest access points
  # #####################

  field :ContestTypes, !types[Types::ContestTypeType] do
    description "Contest Types!"

    resolve -> (obj, args, ctx) { 
      ContestType.all
    }
  end

  field :ContestEffects, !types[Types::ContestEffectType] do
    description "Contest Effects!"

    resolve -> (obj, args, ctx) { 
      ContestEffect.all
    }
  end

  field :SuperContestEffects, !types[Types::SuperContestEffectType] do
    description "Super Contest Effects!"

    resolve -> (obj, args, ctx) { 
      SuperContestEffect.all
    }
  end


  # #######################
  # Encounter access points 
  # #######################

  field :EncounterMethods, !types[Types::EncounterMethodType] do
    description "Encounter methods!"

    resolve -> (obj, args, ctx) { 
      EncounterMethod.all
    }
  end

  field :EncounterConditions, !types[Types::EncounterConditionType] do
    description "Encounter conditions!"

    resolve -> (obj, args, ctx) { 
      EncounterCondition.all
    }
  end

  field :EncounterConditionValues, !types[Types::EncounterConditionValueType] do
    description "Encounter condition values!"

    resolve -> (obj, args, ctx) { 
      EncounterConditionValue.all
    }
  end

  # #######################
  # Evolution access points
  # #######################
  
  field :EvolutionChains, !types[Types::EvolutionChainType] do
    description "Evolution chains!"

    resolve -> (obj, args, ctx) { 
      EvolutionChain.all
    }
  end

  field :EvolutionTriggers, !types[Types::EvolutionTriggerType] do
    description "Evolution triggers!"

    resolve -> (obj, args, ctx) { 
      EvolutionTrigger.all
    }
  end

  # ##################
  # Game access points
  # ##################
  
  field :Generations, !types[Types::GenerationType] do
    description "Generations!"

    resolve -> (obj, args, ctx) { 
      Generation.all
    }
  end

  field :Pokedexes, !types[Types::PokedexType] do
    description "Pokedexes!"

    resolve -> (obj, args, ctx) { 
      Pokedex.all
    }
  end
  
  field :Versions, !types[Types::VersionType] do
    description "Versions!"

    resolve -> (obj, args, ctx) { 
      Version.all
    }
  end

  field :VersionGroups, !types[Types::VersionGroupType] do
    description "Version groups!"

    resolve -> (obj, args, ctx) { 
      VersionGroup.all
    }
  end

  # ##################
  # Item access points
  # ##################
  
  field :Item, !types[Types::ItemType] do
    description "Items!"

    argument :identifier, types.String, default_value: nil
    argument :identifierLike, types.String, default_value: nil
    argument :limit, types.Int, default_value: nil

    resolve -> (obj, args, ctx) { 
      source = Item.all
      source = source.where(identifier: args[:identifier]) if args[:identifier]
      source = source.where("identifier like ?", "%#{args[:identifierLike]}%") if args[:identifierLike]
      source = source.limit(args[:limit]) if args[:limit]
      source
    }
  end

  field :ItemAttributes, !types[Types::ItemAttributeType] do
    description "Item attributes!"

    resolve -> (obj, args, ctx) { 
      ItemAttribute.all
    }
  end

  field :ItemCategories, !types[Types::ItemCategoryType] do
    description "Item categories!"

    resolve -> (obj, args, ctx) { 
      ItemCategory.all
    }
  end

  field :ItemFlingEffects, !types[Types::ItemFlingEffectType] do
    description "Item fling effects!"

    resolve -> (obj, args, ctx) { 
      ItemFlingEffect.all
    }
  end

  field :ItemPockets, !types[Types::ItemPocketType] do
    description "Item pockets!"

    resolve -> (obj, args, ctx) { 
      ItemPocket.all
    }
  end

  # #####################
  # Machine access points
  # #####################

  field :Machines, !types[Types::MachineType] do
    description "Machines!"

    resolve -> (obj, args, ctx) { 
      Machine.all
    }
  end

  # ##################
  # Move access points
  # ##################

  field :Moves, !types[Types::MoveType] do
    description "Moves!"

    resolve -> (obj, args, ctx) { 
      Move.all
    }
  end

  field :MoveAilments, !types[Types::MoveMetaAilmentType] do
    description "Move ailments!"

    resolve -> (obj, args, ctx) { 
      MoveMetaAilment.all
    }
  end

  field :MoveBattleStyles, !types[Types::MoveBattleStyleType] do
    description "Move battle styles!"

    resolve -> (obj, args, ctx) { 
      MoveBattleStyle.all
    }
  end

  field :MoveCategories, !types[Types::MoveMetaCategoryType] do
    description "Move categories!"

    resolve -> (obj, args, ctx) { 
      MoveMetaCategory.all
    }
  end

  field :MoveDamageClasses, !types[Types::MoveDamageClassType] do
    description "Move damage classes!"

    resolve -> (obj, args, ctx) { 
      MoveDamageClass.all
    }
  end

  field :MoveLearnMethods, !types[Types::PokemonMoveMethodType] do
    description "Move learn methods!"

    resolve -> (obj, args, ctx) { 
      PokemonMoveMethod.all
    }
  end

  field :MoveTargets, !types[Types::MoveTargetType] do
    description "Move targets!"

    resolve -> (obj, args, ctx) { 
      MoveTarget.all
    }
  end

  # ######################
  # Location access points
  # ######################

  field :Locations, !types[Types::LocationType] do
    description "Locations!"

    resolve -> (obj, args, ctx) { 
      Location.all
    }
  end

  field :LocationAreas, !types[Types::LocationAreaType] do
    description "Location areas!"

    resolve -> (obj, args, ctx) { 
      LocationArea.all
    }
  end

  field :PalParkAreas, !types[Types::PalParkAreaType] do
    description "Pal park areas!"

    resolve -> (obj, args, ctx) { 
      PalParkArea.all
    }
  end

  field :Regions, !types[Types::RegionType] do
    description "Regions!"

    resolve -> (obj, args, ctx) { 
      Region.all
    }
  end

  # #####################
  # Pokemon access points
  # #####################

  field :Abilities, !types[Types::AbilityType] do
    description "Abilities!"

    resolve -> (obj, args, ctx) { 
      Ability.all
    }
  end

  field :Characteristics, !types[Types::CharacteristicType] do
    description "Characteristics!"

    resolve -> (obj, args, ctx) { 
      Characteristic.all
    }
  end

  field :EggGroups, !types[Types::EggGroupType] do
    description "Egg groups!"

    resolve -> (obj, args, ctx) { 
      EggGroup.all
    }
  end

  field :Genders, !types[Types::GenderType] do
    description "Genders!"

    resolve -> (obj, args, ctx) { 
      Gender.all
    }
  end

  field :GrowthRates, !types[Types::GrowthRateType] do
    description "Growth rates!"

    resolve -> (obj, args, ctx) { 
      GrowthRate.all
    }
  end

  field :Natures, !types[Types::NatureType] do
    description "Natures!"

    resolve -> (obj, args, ctx) { 
      Nature.all
    }
  end

  field :PokeathlonStats, !types[Types::PokeathlonStatType] do
    description "Pokeathlon stats!"

    resolve -> (obj, args, ctx) { 
      PokeathlonStat.all
    }
  end

  field :Pokemon, !types[Types::PokemonType] do
    description "Pokemon!"

    argument :id, types.Int, default_value: nil
    argument :identifier, types.String, default_value: nil
    argument :identifierLike, types.String, default_value: nil
    argument :limit, types.Int, default_value: nil

    resolve -> (obj, args, ctx) { 
      source = Pokemon.all
      source = source.where(id: args[:id]) if args[:id]
      source = source.where(identifier: args[:identifier]) if args[:identifier]
      source = source.where("identifier like ?", "%#{args[:identifierLike]}%") if args[:identifierLike]
      source = source.limit(args[:limit]) if args[:limit]
      source
    }
  end

  field :PokemonColors, !types[Types::PokemonColorType] do
    description "Pokemon Colors!"

    resolve -> (obj, args, ctx) { 
      PokemonColor.all
    }
  end

  field :PokemonForms, !types[Types::PokemonFormType] do
    description "Pokemon forms!"

    resolve -> (obj, args, ctx) { 
      PokemonForm.all
    }
  end

  field :PokemonHabitats, !types[Types::PokemonHabitatType] do
    description "Pokemon habitats!"

    resolve -> (obj, args, ctx) { 
      PokemonHabitat.all
    }
  end

  field :PokemonShapes, !types[Types::PokemonShapeType] do
    description "Pokemon shapes!"

    resolve -> (obj, args, ctx) { 
      PokemonShape.all
    }
  end

  field :PokemonSpecies, !types[Types::PokemonSpecyType] do
    description "Pokemon Species!"

    resolve -> (obj, args, ctx) { 
      PokemonSpecy.all
    }
  end

  field :Stats, !types[Types::StatType] do
    description "Stats!"

    resolve -> (obj, args, ctx) { 
      Stat.all
    }
  end

  field :Types, !types[Types::TypeType] do
    description "Types!"

    resolve -> (obj, args, ctx) { 
      Type.all
    }
  end

  # ######################
  # Language access points
  # ######################

  field :Languages, !types[Types::LanguageType] do
    description "Languages!"

    resolve -> (obj, args, ctx) { 
      Language.all
    }
  end

end
