class Enfoque < ApplicationRecord
	has_many :enfoque_asignatura, dependent: :destroy
	has_many :asignatura, through: :enfoque_asignatura
  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
