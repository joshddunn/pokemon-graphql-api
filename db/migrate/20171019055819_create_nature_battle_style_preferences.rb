class CreateNatureBattleStylePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :nature_battle_style_preferences do |t|
      t.integer :nature_id
      t.integer :move_battle_style_id
      t.integer :low_hp_preference
      t.integer :high_hp_preference

      t.timestamps
    end
  end
end
