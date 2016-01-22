class Setlist < ActiveRecord::Base
  belongs_to :festival
  validates :festival_id, presence: true
  validates :music1,length: {maximum: 20}
  validates :music2,length: {maximum: 20}
  validates :music3,length: {maximum: 20}
  validates :music4,length: {maximum: 20}
  validates :music5,length: {maximum: 20}
  validates :music6,length: {maximum: 20}
  validates :music7,length: {maximum: 20}
  validates :music8,length: {maximum: 20}
  validates :music9,length: {maximum: 20}
  validates :music10,length: {maximum: 20}
end
