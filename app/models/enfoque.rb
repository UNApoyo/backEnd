class Enfoque < ApplicationRecord
	has_many :enfoque_asignaturas, dependent: :destroy
	has_many :asignaturas, through: :enfoque_asignaturas
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
