class Tenent < ApplicationRecord
    has_many :buildings
    has_many :landlords, through: :buildings
end