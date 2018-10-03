class AddColumnAbsorptionToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :absorption, :integer
  end
end
