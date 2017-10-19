class CreateBerryFirmnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :berry_firmnesses do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
