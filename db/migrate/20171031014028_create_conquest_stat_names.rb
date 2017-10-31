class CreateConquestStatNames < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_stat_names do |t|
      t.integer :conquest_stat_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
