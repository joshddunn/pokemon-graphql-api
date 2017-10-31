class CreateConquestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_episodes do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
