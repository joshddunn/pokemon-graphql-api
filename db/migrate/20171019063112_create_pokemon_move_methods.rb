class CreatePokemonMoveMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_move_methods do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
