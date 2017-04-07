class GrupoInvestigacion < ApplicationRecord
	has_many :area_investigacion, dependent: :destroy
	has_many :carrera_investigacion, dependent: :destroy
	has_many :profesor_investigacion, dependent: :destroy
	has_many :area, through: :area_investigacion
	has_many :carrera, through: :carrera_investigacion
	has_many :profesor, through: :profesor_investigacion
end
