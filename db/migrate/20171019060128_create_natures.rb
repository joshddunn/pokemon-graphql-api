class CreateNatures < ActiveRecord::Migration[5.1]
  def change
    create_table :natures do |t|
      t.string :identifier
      t.integer :decreased_stat_id
      t.integer :increased_stat_id
      t.integer :hates_flavor_id
      t.integer :likes_flavor_id
      t.integer :game_index

      t.timestamps
    end
  end
end
