class CreateNatureNames < ActiveRecord::Migration[5.1]
  def change
    create_table :nature_names do |t|
      t.integer :nature_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
