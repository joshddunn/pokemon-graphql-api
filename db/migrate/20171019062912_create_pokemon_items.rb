class CreatePokemonItems < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_items do |t|
      t.integer :pokemon_id
      t.integer :version_id
      t.integer :item_id
      t.integer :rarity

      t.timestamps
    end
  end
end
