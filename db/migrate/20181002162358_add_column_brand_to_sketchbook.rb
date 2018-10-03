class AddColumnBrandToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :brand, :string
  end
end
