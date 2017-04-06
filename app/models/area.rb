class Area < ApplicationRecord
  #belongs_to :asignatura
  validates :nombre, presence: true#, uniqueness: true#, format:{with: /([\w\-\']{2,})([\s]+)([\w\-\']{2,})/, on: :create}
end
