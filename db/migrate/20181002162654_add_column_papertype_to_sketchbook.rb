class AddColumnPapertypeToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :paper_type, :string
  end
end
