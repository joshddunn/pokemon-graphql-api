class CreateConquestTransformationWarriors < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_transformation_warriors do |t|
      t.integer :transformation_id
      t.integer :present_warrior_id

      t.timestamps
    end
  end
end
