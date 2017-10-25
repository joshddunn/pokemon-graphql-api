class AddForeignKeysToCharacteristicGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :characteristic_texts, :characteristics, column: :characteristic_id
    add_foreign_key :characteristic_texts, :languages, column: :local_language_id

    add_foreign_key :characteristics, :stats, column: :stat_id
  end
end
