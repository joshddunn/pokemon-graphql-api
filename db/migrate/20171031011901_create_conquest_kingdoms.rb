class CreateConquestKingdoms < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_kingdoms do |t|
      t.string :identifier
      t.integer :type_id

      t.timestamps
    end
  end
end
