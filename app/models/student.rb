class Student < ApplicationRecord
  belongs_to :school
  has_many :studies
  has_many :subjects, through: :studies
end
