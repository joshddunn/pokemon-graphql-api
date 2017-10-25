class AddForeignKeysToAbilityGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :abilities, :generations, column: :generation_id

    add_foreign_key :ability_changelogs, :abilities, column: :ability_id 
    add_foreign_key :ability_changelogs, :version_groups, column: :changed_in_version_group_id 

    add_foreign_key :ability_changelog_proses, :ability_changelogs, column: :ability_changelog_id
    add_foreign_key :ability_changelog_proses, :languages, column: :local_language_id

    add_foreign_key :ability_flavor_texts, :abilities, column: :ability_id
    add_foreign_key :ability_flavor_texts, :version_groups, column: :version_group_id
    add_foreign_key :ability_flavor_texts, :languages, column: :language_id

    add_foreign_key :ability_names, :abilities, column: :ability_id 
    add_foreign_key :ability_names, :languages, column: :local_language_id

    add_foreign_key :ability_proses, :abilities, column: :ability_id 
    add_foreign_key :ability_proses, :languages, column: :local_language_id
  end
end
