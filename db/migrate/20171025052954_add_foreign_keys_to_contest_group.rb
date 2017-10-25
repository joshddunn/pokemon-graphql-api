class AddForeignKeysToContestGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :contest_combos, :moves, column: :first_move_id
    add_foreign_key :contest_combos, :moves, column: :second_move_id

    add_foreign_key :contest_effect_proses, :contest_effects, column: :contest_effect_id
    add_foreign_key :contest_effect_proses, :languages, column: :local_language_id

    add_foreign_key :contest_type_names, :contest_types, column: :contest_type_id
    add_foreign_key :contest_type_names, :languages, column: :local_language_id
  end
end
