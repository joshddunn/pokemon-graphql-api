class CreateEggGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :egg_groups do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
