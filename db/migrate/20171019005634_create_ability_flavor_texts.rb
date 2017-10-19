class CreateAbilityFlavorTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_flavor_texts do |t|
      t.integer :ability_id
      t.integer :version_group_id
      t.integer :language_id
      t.string :flavor_text

      t.timestamps
    end
  end
end
