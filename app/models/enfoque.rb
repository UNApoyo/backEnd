class Enfoque < ApplicationRecord
	has_one :carrera
	has_many :enfoque_materium
	has_many :materium, through :enfoque_materium
	
	validates :name,:description,presence: true
    validates :name, uniqueness: true
end
