Types::PokemonFormType = GraphQL::ObjectType.define do
  name "PokemonForm"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :formIdentifier, !types.String, "", property: :form_identifier
  field :pokemon, !types.Int, "", property: :pokemon_id
  field :introducedInVersionGroup, !types.Int, "", property: :introduced_in_version_group_id
  field :isDefault, !types.Boolean, "", property: :is_default
  field :isBattleOnly, !types.Boolean, "", property: :is_battle_only
  field :isMega, !types.Boolean, "", property: :is_mega
  field :formOrder, !types.Int, "", property: :form_order
  field :order, !types.Int, "", property: :order
end