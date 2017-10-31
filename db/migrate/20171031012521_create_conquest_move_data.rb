class CreateConquestMoveData < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_move_data do |t|
      t.integer :move_id
      t.integer :power
      t.integer :accuracy
      t.integer :effect_chance
      t.integer :effect_id
      t.integer :range_id
      t.integer :displacement_id

      t.timestamps
    end
  end
end
