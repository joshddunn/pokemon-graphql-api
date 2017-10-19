class CreateGrowthRateProses < ActiveRecord::Migration[5.1]
  def change
    create_table :growth_rate_proses do |t|
      t.integer :growth_rate_id
      t.integer :local_language_id
      t.string :name

      t.timestamps
    end
  end
end
