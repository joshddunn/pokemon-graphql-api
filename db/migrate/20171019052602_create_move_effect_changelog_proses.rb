class CreateMoveEffectChangelogProses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_effect_changelog_proses do |t|
      t.integer :move_effect_changelog_id
      t.integer :local_language_id
      t.string :effect

      t.timestamps
    end
  end
end
