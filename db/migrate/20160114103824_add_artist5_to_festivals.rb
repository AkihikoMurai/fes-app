class AddArtist5ToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :artist5, :string
  end
end
