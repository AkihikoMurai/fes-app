class Festival < ActiveRecord::Base
    
    belongs_to:user
    has_many:artists, dependent: :destroy
    validates :user_id, presence: true
    validates :fes_name, presence: true, length:{ maximum:50}
    validates :fes_place, presence: true, length:{ maximum:50}
    
end
