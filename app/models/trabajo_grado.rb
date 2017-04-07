class TrabajoGrado < ApplicationRecord
	has_many :profesor_investigacions, dependent: :destroy
	has_many :profesors, through: :profesor_investigacions

  validates :nombre, presence: true
end
