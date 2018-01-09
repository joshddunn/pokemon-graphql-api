Types::CharacteristicTextType = GraphQL::ObjectType.define do
  name "CharacteristicText"
  description ""

  field :id, types.ID, "", property: :id
  field :characteristic, Types::CharacteristicType, "", property: :characteristic
  field :localLanguage, Types::LanguageType, "", property: :language
  field :message, types.String, "", property: :message

end
