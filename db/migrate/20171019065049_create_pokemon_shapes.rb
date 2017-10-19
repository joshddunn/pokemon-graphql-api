class CreatePokemonShapes < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_shapes do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
