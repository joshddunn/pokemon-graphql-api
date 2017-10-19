class CreateTypeEfficacies < ActiveRecord::Migration[5.1]
  def change
    create_table :type_efficacies do |t|
      t.integer :damage_type_id
      t.integer :target_type_id
      t.integer :damage_factor

      t.timestamps
    end
  end
end
