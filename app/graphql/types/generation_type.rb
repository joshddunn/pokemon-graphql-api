Types::GenerationType = GraphQL::ObjectType.define do
  name "Generation"
  description ""

  field :id, !types.ID, "", property: :id
  field :mainRegion, !types.Int, "", property: :main_region_id
  field :identifier, !types.String, "", property: :identifier
end
