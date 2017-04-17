require 'test_helper'

class EstudianteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save estudiante without creditos" do
  		estudiante = Estudiante.new(porcentaje_carrera: 50)
  		assert_not estudiante.save
  end
end
