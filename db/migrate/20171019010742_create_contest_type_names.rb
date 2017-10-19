class CreateContestTypeNames < ActiveRecord::Migration[5.1]
  def change
    create_table :contest_type_names do |t|
      t.integer :contest_type_id
      t.integer :local_language_id
      t.string :name
      t.string :flavor
      t.string :color

      t.timestamps
    end
  end
end
