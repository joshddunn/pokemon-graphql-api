class AddColumnToPokemonShapeProse < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemon_shape_proses, :description, :string
  end
end
