class Enfoque < ApplicationRecord
  validates :nombre, presence: true, format:{with: /\A[a-zA-Z]+\z/, on : :create}
end
