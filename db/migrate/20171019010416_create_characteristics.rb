class CreateCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :characteristics do |t|
      t.integer :stat_id
      t.integer :gene_mod_5

      t.timestamps
    end
  end
end
