class Festival < ActiveRecord::Base
    
    belongs_to:user
    has_many:setlists, dependent: :destroy
    validates :fes_name, presence: true, length:{ maximum:50}
    validates :fes_place, presence: true, length:{ maximum:50}
    validates :artist, presence: true, length:{ maximum:50}
    
end
