class AddYoutubeurlToSetlists < ActiveRecord::Migration
  def change
    add_column :setlists, :youtubeurl, :text
  end
end
