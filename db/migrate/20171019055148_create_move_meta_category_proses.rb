class CreateMoveMetaCategoryProses < ActiveRecord::Migration[5.1]
  def change
    create_table :move_meta_category_proses do |t|
      t.integer :move_meta_category_id
      t.integer :local_language_id
      t.string :description

      t.timestamps
    end
  end
end
