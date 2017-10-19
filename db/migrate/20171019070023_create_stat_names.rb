class CreateStatNames < ActiveRecord::Migration[5.1]
  def change
    create_table :stat_names do |t|
      t.integer :stat_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
