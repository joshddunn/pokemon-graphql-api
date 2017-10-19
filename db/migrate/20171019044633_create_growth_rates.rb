class CreateGrowthRates < ActiveRecord::Migration[5.1]
  def change
    create_table :growth_rates do |t|
      t.string :identifier
      t.string :formula

      t.timestamps
    end
  end
end
