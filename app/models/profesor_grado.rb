class ProfesorGrado < ApplicationRecord
  belongs_to :profesor
  belongs_to :trabajo_grado
end
