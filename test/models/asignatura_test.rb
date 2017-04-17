require 'test_helper'

class AsignaturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save asignatura without codigo" do
  		asignatura = Asignatura.new(nombre: 'calculito', creditos: 4)
  		assert_not asignatura.save
  end

  test "should not save asignatura without creditos" do
  		asignatura = Asignatura.new(nombre: 'calculito', codigo: 200000)
  		assert_not asignatura.save
  end
end
