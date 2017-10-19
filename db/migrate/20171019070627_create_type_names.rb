class CreateTypeNames < ActiveRecord::Migration[5.1]
  def change
    create_table :type_names do |t|
      t.integer :type_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
