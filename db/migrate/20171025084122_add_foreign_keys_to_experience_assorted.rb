class AddForeignKeysToExperienceAssorted < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :experiences, :growth_rates, column: :growth_rate_id

    add_foreign_key :generation_names, :generations, column: :generation_id
    add_foreign_key :generation_names, :languages, column: :local_language_id

    add_foreign_key :generations, :regions, column: :main_region_id

    add_foreign_key :growth_rate_proses, :growth_rates, column: :growth_rate_id
    add_foreign_key :growth_rate_proses, :languages, column: :local_language_id
  end
end
