class CreateMoveDamageClassProses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_damage_class_proses do |t|
      t.integer :move_damage_class_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
