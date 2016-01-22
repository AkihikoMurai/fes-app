class AddArtist4ToFestivals < ActiveRecord::Migration
  def change
    add_column :festivals, :artist4, :string
  end
end
