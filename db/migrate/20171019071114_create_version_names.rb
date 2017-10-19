class CreateVersionNames < ActiveRecord::Migration[5.1]
  def change
    create_table :version_names do |t|
      t.integer :version_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
