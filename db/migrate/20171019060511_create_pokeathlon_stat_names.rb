class CreatePokeathlonStatNames < ActiveRecord::Migration[5.1]
  def change
    create_table :pokeathlon_stat_names do |t|
      t.integer :pokeathlon_stat_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
