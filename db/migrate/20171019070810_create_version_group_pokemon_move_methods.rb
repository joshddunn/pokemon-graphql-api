class CreateVersionGroupPokemonMoveMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :version_group_pokemon_move_methods do |t|
      t.integer :version_group_id
      t.integer :pokemon_move_method_id

      t.timestamps
    end
  end
end
