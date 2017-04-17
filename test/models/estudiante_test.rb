require 'test_helper'

class EstudianteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save estudiante without creditos" do
      @estudiante = estudiantes(:un_estudiante)
      @estudiante.creditos_aprobados= nil
      estudiante = @estudiante
  		assert_not estudiante.save
  end
end
