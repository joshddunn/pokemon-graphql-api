class CreateEvolutionChains < ActiveRecord::Migration[5.1]
  def change
    create_table :evolution_chains do |t|
      t.integer :baby_trigger_item_id

      t.timestamps
    end
  end
end
