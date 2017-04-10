class ProfesorGrado < ApplicationRecord
  belongs_to :profesors
  belongs_to :trabajo_grados
end
