class CreateCharacteristicTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :characteristic_texts do |t|
      t.integer :characteristic_id
      t.integer :local_language_id
      t.string :message

      t.timestamps
    end
  end
end
