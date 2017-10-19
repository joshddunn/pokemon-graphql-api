class CreateAbilityNames < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_names do |t|
      t.integer :ability_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
