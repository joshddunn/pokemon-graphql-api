Types::MoveEffectProseType = GraphQL::ObjectType.define do
  name "MoveEffectProse"
  description ""

  field :id, types.ID, "", property: :id
  field :moveEffect, Types::MoveEffectType, "", property: :move_effect
  field :localLanguage, Types::LanguageType, "", property: :language
  field :shortEffect, types.String, "", property: :short_effect
  field :effect, types.String, "", property: :effect

end
