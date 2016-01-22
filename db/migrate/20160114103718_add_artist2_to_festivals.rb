class AddArtist2ToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :artist2, :string
  end
end
