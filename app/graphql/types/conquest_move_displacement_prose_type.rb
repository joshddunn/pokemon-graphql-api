Types::ConquestMoveDisplacementProseType = GraphQL::ObjectType.define do
  name "ConquestMoveDisplacementProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :moveDisplacement, Types::ConquestMoveDisplacementType, "", property: :conquest_move_displacement
  field :localLanguage, Types::LanguageType, "", property: :language
  field :name, !types.String, "", property: :name
  field :shortEffect, !types.String, "", property: :short_effect
  field :effect, !types.String, "", property: :effect

end
