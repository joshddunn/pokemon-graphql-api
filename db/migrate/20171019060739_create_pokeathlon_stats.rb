class CreatePokeathlonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :pokeathlon_stats do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
