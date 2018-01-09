Types::MachineType = GraphQL::ObjectType.define do
  name "Machine"
  description ""

  field :id, types.ID, "", property: :id
  field :machineNumber, types.Int, "", property: :machine_number
  field :versionGroup, Types::VersionGroupType, "", property: :version_group
  field :item, Types::ItemType, "", property: :item
  field :move, Types::MoveType, "", property: :move

end
