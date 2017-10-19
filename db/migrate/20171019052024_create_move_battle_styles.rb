class CreateMoveBattleStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :move_battle_styles do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
