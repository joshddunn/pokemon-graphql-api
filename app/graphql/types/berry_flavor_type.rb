Types::BerryFlavorType = GraphQL::ObjectType.define do
  name "BerryFlavor"
  description ""

  field :id, !types.ID, "", property: :id
  field :berry, !types.Int, "", property: :berry_id
  field :contestType, !types.Int, "", property: :contest_type_id
  field :flavor, !types.Int, "", property: :flavor
end