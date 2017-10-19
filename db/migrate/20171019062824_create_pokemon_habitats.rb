class CreatePokemonHabitats < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_habitats do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
