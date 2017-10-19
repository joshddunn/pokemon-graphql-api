class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :identifier
      t.integer :generation_id
      t.integer :damage_class_id

      t.timestamps
    end
  end
end
