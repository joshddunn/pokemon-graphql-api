class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.integer :version_group_id
      t.string :identifier

      t.timestamps
    end
  end
end
