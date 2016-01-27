class Artist < ActiveRecord::Base
  belongs_to :festival
  has_many:setlists
  validates :festival_id, presence: true
end
