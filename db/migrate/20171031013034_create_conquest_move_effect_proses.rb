class CreateConquestMoveEffectProses < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_effect_proses do |t|
      t.integer :conquest_move_effect_id
      t.integer :local_language_id
      t.string :short_effect
      t.string :effect

      t.timestamps
    end
  end
end
