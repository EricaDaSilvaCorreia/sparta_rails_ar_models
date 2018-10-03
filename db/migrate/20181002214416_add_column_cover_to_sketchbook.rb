class AddColumnCoverToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :cover, :string
  end
end
