class CreateConquestKingdomNames < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_kingdom_names do |t|
      t.integer :kingdom_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
