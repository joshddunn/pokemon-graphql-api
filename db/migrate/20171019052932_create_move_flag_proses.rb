class CreateMoveFlagProses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_flag_proses do |t|
      t.integer :move_flag_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
