class CreateMoveFlavorSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :move_flavor_summaries do |t|
      t.integer :move_id
      t.integer :local_language_id
      t.string :flavor_summary

      t.timestamps
    end
  end
end
