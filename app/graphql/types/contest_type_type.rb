Types::ContestTypeType = GraphQL::ObjectType.define do
  name "ContestType"
  description ""

  field :id, types.ID, "", property: :id
  field :identifier, types.String, "", property: :identifier

  field :berryFlavors, types[Types::BerryFlavorType], "", property: :berry_flavors
  field :contestTypeNames, types[Types::ContestTypeNameType], "", property: :contest_type_names
  field :moves, types[Types::MoveType], "", property: :moves
end
