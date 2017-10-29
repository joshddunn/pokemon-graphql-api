Types::MoveType = GraphQL::ObjectType.define do
  name "Move"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :type, Types::TypeType, "", property: :type
  field :power, !types.Int, "", property: :power
  field :pp, !types.Int, "", property: :pp
  field :accuracy, !types.Int, "", property: :accuracy
  field :priority, !types.Int, "", property: :priority
  field :target, Types::MoveTargetType, "", property: :move_target
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class
  field :effect, Types::MoveEffectType, "", property: :move_effect
  field :effectChance, !types.Int, "", property: :effect_chance
  field :contestType, Types::ContestTypType, "", property: :contest_typ
  field :contestEffect, Types::ContestEffectType, "", property: :contest_effect
  field :superContestEffect, Types::SuperContestEffectType, "", property: :super_contest_effect

  field :firstMove, Types::SuperContestComboFirstMoveType, "", property: :super_contest_combo_first_moves
  field :secondMove, Types::SuperContestComboSecondMoveType, "", property: :super_contest_combo_second_moves
  field :move, Types::PokemonMoveType, "", property: :pokemon_moves
  field :knownMove, Types::PokemonEvolutionType, "", property: :pokemon_evolutions
end
