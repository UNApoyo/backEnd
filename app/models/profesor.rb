class Profesor < ApplicationRecord
	has_many :profesor_grado, dependent: :destroy
	has_many :profesor_investigacion, dependent: :destroy
	has_many :trabajo_grado, through: profesor_grado
	has_many :grupo_investigacion, through: profesor_investigacion

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
