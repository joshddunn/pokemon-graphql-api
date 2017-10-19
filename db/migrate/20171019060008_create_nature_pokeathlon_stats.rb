class CreateNaturePokeathlonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :nature_pokeathlon_stats do |t|
      t.integer :nature_id
      t.integer :pokeathlon_stat_id
      t.integer :max_change

      t.timestamps
    end
  end
end
