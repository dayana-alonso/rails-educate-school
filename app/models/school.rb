 class School < ApplicationRecord
 	validates :name, :address, presence: true
 	has_one :library
end
