require 'test_helper'

class CarreraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save carrera without creditos" do
  		carrera = Carrera.new(nombre: 'carrerita', codigo:2870)
  		assert_not carrera.save
  end

  test "should not save carrera without codigo" do
  		carrera = Carrera.new(nombre: 'carrerita', creditos:180)
  		assert_not carrera.save
  end
end
