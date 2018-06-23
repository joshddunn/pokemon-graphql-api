Types::AbilityChangelogProseType = GraphQL::ObjectType.define do
  name 'AbilityChangelogProse'
  description ''

  field :id, types.ID, '', property: :id
  field :abilityChangelog, Types::AbilityChangelogType, '',
        property: :ability_changelog
  field :localLanguage, Types::LanguageType, '', property: :language
  field :effect, types.String, '', property: :effect
end
