Types::AbilityChangelogProseType = GraphQL::ObjectType.define do
  name "AbilityChangelogProse"
  description ""

  field :id, !types.ID, "", property: :id
  field :abilityChangelog, !types.Int, "", property: :ability_changelog_id
  field :localLanguage, !types.Int, "", property: :local_language_id
  field :effect, !types.String, "", property: :effect
end