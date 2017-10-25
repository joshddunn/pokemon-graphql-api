class AddForeignKeysToBerryGroup < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :berries, :items, column: :item_id
    add_foreign_key :berries, :berry_firmnesses, column: :firmness_id
    add_foreign_key :berries, :types, column: :natural_gift_type_id

    add_foreign_key :berry_firmness_names, :berry_firmnesses, column: :berry_firmness_id
    add_foreign_key :berry_firmness_names, :languages, column: :local_language_id

    add_foreign_key :berry_flavors, :berries, column: :berry_id
    add_foreign_key :berry_flavors, :contest_types, column: :contest_type_id
  end
end
