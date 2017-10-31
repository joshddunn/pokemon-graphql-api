class CreateConquestWarriorRankStatMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_rank_stat_maps do |t|
      t.integer :warrior_rank_id
      t.integer :warrior_stat_id
      t.integer :base_stat

      t.timestamps
    end
  end
end
