class CreateSuperContestEffectProses < ActiveRecord::Migration[5.1]
  def change
    create_table :super_contest_effect_proses do |t|
      t.integer :super_contest_effect_id
      t.integer :local_language_id
      t.string :flavor_text

      t.timestamps
    end
  end
end
