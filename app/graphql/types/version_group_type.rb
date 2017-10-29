Types::VersionGroupType = GraphQL::ObjectType.define do
  name "VersionGroup"
  description ""

  field :id, !types.ID, "", property: :id
  field :identifier, !types.String, "", property: :identifier
  field :generation, Types::GenerationType, "", property: :generation
  field :order, !types.Int, "", property: :order

  field :changedInVersionGroup, Types::MoveEffectChangelogType, "", property: :move_effect_changelogs
  field :versionGroup, Types::VersionType, "", property: :versions
  field :introducedInVersionGroup, Types::PokemonFormType, "", property: :pokemon_forms
end
