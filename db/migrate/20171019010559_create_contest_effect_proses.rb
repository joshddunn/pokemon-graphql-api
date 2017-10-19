class CreateContestEffectProses < ActiveRecord::Migration[5.1]
  def change
    create_table :contest_effect_proses do |t|
      t.integer :contest_effect_id
      t.integer :local_language_id
      t.string :flavor_text
      t.string :effect

      t.timestamps
    end
  end
end
