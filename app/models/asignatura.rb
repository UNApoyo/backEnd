class Asignatura < ApplicationRecord
  belongs_to :prerequisito

  validates :nombre, presence: true, format:{with: /\A[a-zA-Z]+\z/, on : :create}
  validates :creditos, presence true, length: {minimun: 1}
end
