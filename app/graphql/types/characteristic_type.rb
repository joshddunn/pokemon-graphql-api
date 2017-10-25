Types::CharacteristicType = GraphQL::ObjectType.define do
  name "Characteristic"
  description ""

  field :id, !types.ID, "", property: :id
  field :stat, !types.Int, "", property: :stat_id
  field :geneMod5, !types.Int, "", property: :gene_mod_5

end
