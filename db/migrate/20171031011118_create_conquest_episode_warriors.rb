class CreateConquestEpisodeWarriors < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_episode_warriors do |t|
      t.integer :episode_id
      t.integer :warrior_id

      t.timestamps
    end
  end
end
