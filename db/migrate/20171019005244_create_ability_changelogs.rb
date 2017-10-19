class CreateAbilityChangelogs < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_changelogs do |t|
      t.integer :ability_id
      t.integer :changed_in_version_group_id

      t.timestamps
    end
  end
end
