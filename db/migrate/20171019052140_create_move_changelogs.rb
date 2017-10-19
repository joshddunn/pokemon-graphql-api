class CreateMoveChangelogs < ActiveRecord::Migration[5.1]
  def change
    create_table :move_changelogs do |t|
      t.integer :move_id
      t.integer :changed_in_version_group_id
      t.integer :type_id
      t.integer :power
      t.integer :pp
      t.integer :accuracy
      t.integer :effect_id
      t.integer :effect_chance

      t.timestamps
    end
  end
end
