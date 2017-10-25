class AddForeignKeysToEvolutionGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :evolution_chains, :items, column: :baby_trigger_item_id

    add_foreign_key :evolution_trigger_proses, :evolution_triggers, column: :evolution_trigger_id
    add_foreign_key :evolution_trigger_proses, :languages, column: :local_language_id
  end
end
