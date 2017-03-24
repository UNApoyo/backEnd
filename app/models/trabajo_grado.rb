class TrabajoGrado < ApplicationRecord
	has_many :profesor_grado
	has_many :profesor,through :profesor_grado
	has_one :carrera
	
	validates :name,:description,presence: true
end
