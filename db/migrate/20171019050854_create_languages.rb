class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :iso639
      t.string :iso3166
      t.string :identifier
      t.boolean :official
      t.integer :order

      t.timestamps
    end
  end
end
