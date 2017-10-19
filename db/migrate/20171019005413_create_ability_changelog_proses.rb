class CreateAbilityChangelogProses < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_changelog_proses do |t|
      t.integer :ability_changelog_id
      t.integer :local_language_id
      t.string :effect

      t.timestamps
    end
  end
end
