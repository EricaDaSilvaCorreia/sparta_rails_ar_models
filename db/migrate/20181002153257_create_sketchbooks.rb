class CreateSketchbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :sketchbooks do |t|

      t.timestamps
    end
  end
end
