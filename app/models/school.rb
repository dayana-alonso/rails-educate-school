 class School < ApplicationRecord
 	has_one :library
 	has_many :students
 	validates :name, :address, presence: true
end
