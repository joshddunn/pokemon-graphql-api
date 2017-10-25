Types::MachineType = GraphQL::ObjectType.define do
  name "Machine"
  description ""

  field :id, !types.ID, "", property: :id
  field :machineNumber, !types.Int, "", property: :machine_number
  field :versionGroup, !types.Int, "", property: :version_group_id
  field :item, !types.Int, "", property: :item_id
  field :move, !types.Int, "", property: :move_id

end
