class CreatePokedexVersionGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :pokedex_version_groups do |t|
      t.integer :pokedex_id
      t.integer :version_group_id

      t.timestamps
    end
  end
end
