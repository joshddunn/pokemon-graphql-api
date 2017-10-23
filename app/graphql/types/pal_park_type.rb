Types::PalParkType = GraphQL::ObjectType.define do
  name "PalPark"
  description ""

  field :id, !types.ID, "", property: :id
  field :species, !types.Int, "", property: :species_id
  field :area, !types.Int, "", property: :area_id
  field :baseScore, !types.Int, "", property: :base_score
  field :rate, !types.Int, "", property: :rate
end