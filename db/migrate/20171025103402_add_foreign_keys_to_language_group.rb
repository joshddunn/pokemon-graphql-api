class AddForeignKeysToLanguageGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :language_names, :languages, column: :language_id
    add_foreign_key :language_names, :languages, column: :local_language_id
  end
end
