class Asignatura < ApplicationRecord
  belongs_to :prerequisito

  validates :nombre, presence: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
  validates :creditos, presence: true, length: {minimum: 1}

end
