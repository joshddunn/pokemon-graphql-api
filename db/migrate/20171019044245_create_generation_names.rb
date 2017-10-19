class CreateGenerationNames < ActiveRecord::Migration[5.1]
  def change
    create_table :generation_names do |t|
      t.integer :generation_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
