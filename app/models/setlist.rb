class Setlist < ActiveRecord::Base
  belongs_to :artist
  validates :artist_id, presence: true
  validates :music1, presence: true, length: {maximum: 20}
  validates :youtubeurl, presence: true
end
