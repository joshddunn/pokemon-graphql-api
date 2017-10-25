Types::CharacteristicTextType = GraphQL::ObjectType.define do
  name "CharacteristicText"
  description ""

  field :id, !types.ID, "", property: :id
  field :characteristic, !types.Int, "", property: :characteristic_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :message, !types.String, "", property: :message

end
