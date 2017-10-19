class CreateVersionGroupRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :version_group_regions do |t|
      t.integer :version_group_id
      t.integer :region_id

      t.timestamps
    end
  end
end
