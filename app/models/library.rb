class Library < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :school
end
