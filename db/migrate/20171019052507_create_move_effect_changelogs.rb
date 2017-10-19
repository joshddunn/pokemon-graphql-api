class CreateMoveEffectChangelogs < ActiveRecord::Migration[5.1]
  def change
    create_table :move_effect_changelogs do |t|
      t.integer :effect_id
      t.integer :changed_in_version_group_id

      t.timestamps
    end
  end
end
