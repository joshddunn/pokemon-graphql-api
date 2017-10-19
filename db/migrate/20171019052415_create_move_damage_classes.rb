class CreateMoveDamageClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_damage_classes do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
