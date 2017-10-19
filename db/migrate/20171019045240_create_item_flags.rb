class CreateItemFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :item_flags do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
