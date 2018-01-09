Types::ConquestMoveEffectProseType = GraphQL::ObjectType.define do
  name "ConquestMoveEffectProse"
  description ""

  field :id, types.ID, "", property: :id
  field :conquestMoveEffect, Types::ConquestMoveEffectType, "", property: :conquest_move_effect
  field :localLanguage, Types::LanguageType, "", property: :language
  field :shortEffect, types.String, "", property: :short_effect
  field :effect, types.String, "", property: :effect

end
