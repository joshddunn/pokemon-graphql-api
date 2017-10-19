class CreateLanguageNames < ActiveRecord::Migration[5.1]
  def change
    create_table :language_names do |t|
      t.integer :language_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
