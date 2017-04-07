class TrabajoGrado < ApplicationRecord
	has_many :profesor_investigacion, dependent: :destroy
	has_many :profesor, through: profesor_investigacion
	
  validates :nombre, presence: true
end
