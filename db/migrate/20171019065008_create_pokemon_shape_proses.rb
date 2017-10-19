class CreatePokemonShapeProses < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_shape_proses do |t|
      t.integer :pokemon_shape_id
      t.integer :local_language_id
      t.string :name
      t.string :awesome_name

      t.timestamps
    end
  end
end
