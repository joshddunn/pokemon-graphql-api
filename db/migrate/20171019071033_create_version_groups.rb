class CreateVersionGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :version_groups do |t|
      t.string :identifier
      t.integer :generation_id
      t.integer :order

      t.timestamps
    end
  end
end
