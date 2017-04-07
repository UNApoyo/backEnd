class ProfesorGrado < ApplicationRecord
  has_many :profesors
  has_many :trabajo_grados
end
