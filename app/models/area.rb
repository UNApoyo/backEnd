class Area < ApplicationRecord
  belongs_to :materia

  validates :nombre, presence: true, uniqueness: true, format:{with: /\A[a-zA-Z]+\z/, on : :create}
end
