class AddArtistToSetlists < ActiveRecord::Migration
  def change
    add_reference :setlists, :artist, index: true, foreign_key: true
  end
end
