class AddFestivalToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :festival, :reference, index: true, foreign_key: true
  end
end
