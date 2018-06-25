Types::ConquestWarriorArchetypeType = GraphQL::ObjectType.define do
  name 'ConquestWarriorArchetype'
  description ''

  field :id, types.ID, '', property: :id
  field :identifier, types.String, '', property: :identifier

  field :conquestWarriors, types[Types::ConquestWarriorType], '',
        property: :conquest_warriors
end
