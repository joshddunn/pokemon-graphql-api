Types::BerryFlavorType = GraphQL::ObjectType.define do
  name 'BerryFlavor'
  description ''

  field :id, types.ID, '', property: :id
  field :berry, Types::BerryType, '', property: :berry
  field :contestType, Types::ContestTypeType, '', property: :contest_type
  field :flavor, types.Int, '', property: :flavor

  field :likesFlavors, types[Types::NatureType], '', property: :likes_flavors
  field :hatesFlavors, types[Types::NatureType], '', property: :hates_flavors
end
