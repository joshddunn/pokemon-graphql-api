class CreateConquestEpisodeNames < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_episode_names do |t|
      t.integer :episode_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
