Types::EncounterConditionType = GraphQL::ObjectType.define do
  name "EncounterCondition"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
end