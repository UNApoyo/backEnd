require 'test_helper'

class AsignaturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save asignatura without codigo" do
      @asignatura = asignaturas(:un_asignatura)
      @asignatura.codigo= nil
      asignatura = @asignatura
  		assert_not asignatura.save
  end

  test "should not save asignatura without creditos" do
      @asignatura = asignaturas(:un_asignatura)
      @asignatura.creditos= nil
      asignatura = @asignatura
  		assert_not asignatura.save
  end
end
