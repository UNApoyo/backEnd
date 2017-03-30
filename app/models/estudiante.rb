class Estudiante < ApplicationRecord
  has_one :materia
  belongs_to :historia_academica
  
  	validates :nombre,presence: true
    validates :nombre, uniqueness: true
end
