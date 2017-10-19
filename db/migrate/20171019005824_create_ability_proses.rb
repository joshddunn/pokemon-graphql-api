class CreateAbilityProses < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_proses do |t|
      t.integer :ability_id
      t.integer :local_language_id
      t.string :short_effect
      t.string :effect

      t.timestamps
    end
  end
end
