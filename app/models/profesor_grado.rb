class ProfesorGrado < ApplicationRecord
  has_many :profesor
  has_many :trabajo_grado
end
