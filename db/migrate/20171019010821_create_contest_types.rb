class CreateContestTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :contest_types do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
