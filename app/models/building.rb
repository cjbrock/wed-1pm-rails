class Building < ApplicationRecord
    belongs_to :landlord
    belongs_to :tenent
end