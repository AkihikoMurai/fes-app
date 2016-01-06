class Festival < ActiveRecord::Base
    validates :fes_name, presence: true, length:{ maximum:50}
    validates :fes_place, presence: true, length:{ maximum:50}
    validates :fes_date, presence: true, length:{ maximum:50}
    validates :artist, presence: true, length:{ maximum:50}
    belongs_to:user
end
