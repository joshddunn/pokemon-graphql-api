Types::CharacteristicType = GraphQL::ObjectType.define do
  name "Characteristic"
  description ""

  field :id, types.ID, "", property: :id
  field :stat, Types::StatType, "", property: :stat
  field :geneMod5, types.Int, "", property: :gene_mod_5

  field :characteristicTexts, types[Types::CharacteristicTextType], "", property: :characteristic_texts
end
