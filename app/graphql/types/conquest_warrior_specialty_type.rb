Types::ConquestWarriorSpecialtyType = GraphQL::ObjectType.define do
  name 'ConquestWarriorSpecialty'
  description ''

  field :id, types.ID, '', property: :id
  field :warrior, Types::ConquestWarriorType, '', property: :conquest_warrior
  field :type, Types::TypeType, '', property: :type
  field :slot, types.Int, '', property: :slot
end
