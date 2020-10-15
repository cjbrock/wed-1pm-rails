class Landlord < ApplicationRecord
    has_many :buildings
    has_many :tenents, through: :buildings
end