class CreateEvolutionTriggerProses < ActiveRecord::Migration[5.1]
  def change
    create_table :evolution_trigger_proses do |t|
      t.integer :evolution_trigger_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
