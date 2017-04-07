class Profesor < ApplicationRecord
	has_many :profesor_grados, dependent: :destroy
	has_many :profesor_investigacions, dependent: :destroy
	has_many :trabajo_grados, through: :profesor_grados
	has_many :grupo_investigacions, through: :profesor_investigacions

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
