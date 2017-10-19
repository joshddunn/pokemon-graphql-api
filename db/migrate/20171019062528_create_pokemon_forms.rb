class CreatePokemonForms < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_forms do |t|
      t.string :identifier
      t.string :form_identifier
      t.integer :pokemon_id
      t.integer :introduced_in_version_group_id
      t.boolean :is_default
      t.boolean :is_battle_only
      t.boolean :is_mega
      t.integer :form_order
      t.integer :order

      t.timestamps
    end
  end
end
