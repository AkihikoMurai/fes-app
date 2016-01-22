class AddArtist3ToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :artist3, :string
  end
end
