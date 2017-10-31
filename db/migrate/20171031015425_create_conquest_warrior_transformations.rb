class CreateConquestWarriorTransformations < ActiveRecord::Migration[5.1]
  def change
    create_table :conquest_warrior_transformations do |t|
      t.integer :transformed_warrior_rank_id
      t.boolean :is_automatic
      t.integer :required_link
      t.integer :completed_episode_id
      t.integer :current_episode_id
      t.integer :distant_warrior_id
      t.integer :female_warlord_count
      t.integer :pokemon_count
      t.integer :collection_type_id
      t.integer :warrior_count

      t.timestamps
    end
  end
end
