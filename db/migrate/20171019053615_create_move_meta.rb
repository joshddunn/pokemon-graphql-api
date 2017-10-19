class CreateMoveMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :move_meta do |t|
      t.integer :move_id
      t.integer :meta_category_id
      t.integer :meta_ailment_id
      t.integer :min_hits
      t.integer :max_hits
      t.integer :min_turns
      t.integer :max_turns
      t.integer :drain
      t.integer :healing
      t.boolean :crit_rate
      t.integer :ailment_chance
      t.integer :flinch_chance
      t.integer :stat_chance

      t.timestamps
    end
  end
end
