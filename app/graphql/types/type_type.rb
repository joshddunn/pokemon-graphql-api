Types::TypeType = GraphQL::ObjectType.define do
  name "Type"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :damageClass, Types::MoveDamageClassType, "", property: :move_damage_class

  field :naturalGiftType, Types::BerryType, "", property: :berries
  field :type, Types::TypeNameType, "", property: :type_names
  field :knownMoveType, Types::KnownMoveTypeType, "", property: :known_move_types
  field :partyType, Types::PartyTypeType, "", property: :party_types
  field :damageType, Types::DamageTypeType, "", property: :damage_types
  field :targetType, Types::TargetTypeType, "", property: :target_types
end
