class CreateConquestMaxLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_max_links do |t|
      t.integer :warrior_rank_id
      t.integer :pokemon_species_id
      t.integer :max_link

      t.timestamps
    end
  end
end
