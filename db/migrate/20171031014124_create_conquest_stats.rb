class CreateConquestStats < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_stats do |t|
      t.string :identifier
      t.boolean :is_base

      t.timestamps
    end
  end
end
