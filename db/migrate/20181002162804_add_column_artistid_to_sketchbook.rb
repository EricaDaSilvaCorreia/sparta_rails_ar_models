class AddColumnArtistidToSketchbook < ActiveRecord::Migration[5.2]
  def change
    add_column :sketchbooks, :artist_id, :integer
  end
end
