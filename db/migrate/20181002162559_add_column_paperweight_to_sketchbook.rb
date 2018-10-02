class AddColumnPaperweightToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :paper_weight, :integer
  end
end
