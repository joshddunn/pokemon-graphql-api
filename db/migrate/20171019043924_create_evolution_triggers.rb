class CreateEvolutionTriggers < ActiveRecord::Migration[5.1]
  def change
    create_table :evolution_triggers do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
