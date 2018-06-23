Types::AbilityChangelogType = GraphQL::ObjectType.define do
  name 'AbilityChangelog'
  description ''

  field :id, types.ID, '', property: :id
  field :ability, Types::AbilityType, '', property: :ability
  field :changedInVersionGroup, Types::VersionGroupType, '',
        property: :version_group

  field :abilityChangelogProses, types[Types::AbilityChangelogProseType], '',
        property: :ability_changelog_proses
end
