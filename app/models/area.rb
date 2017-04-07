class Area < ApplicationRecord
	has_many :asignatura
	has_many :area_investigacion, dependent: :destroy
	has_many :grupo_investigacion, through: :area_investigacion
	
	validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
