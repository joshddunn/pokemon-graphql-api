class CreateEggGroupProses < ActiveRecord::Migration[5.1]
  def change
    create_table :egg_group_proses do |t|
      t.integer :egg_group_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
