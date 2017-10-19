class CreatePokedexProses < ActiveRecord::Migration[5.1]
  def change
    create_table :pokedex_proses do |t|
      t.integer :pokedex_id
      t.integer :local_language_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
