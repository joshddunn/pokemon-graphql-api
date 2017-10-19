class CreateBerryFirmnessNames < ActiveRecord::Migration[5.1]
  def change
    create_table :berry_firmness_names do |t|
      t.integer :berry_firmness_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
