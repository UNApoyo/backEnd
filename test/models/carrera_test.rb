require 'test_helper'

class CarreraTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save carrera without creditos" do
      @carrera = carreras(:un_carrera)
      @carrera.creditos= nil
  		carrera = @carrera
  		assert_not carrera.save
  end

  test "should not save carrera without codigo" do
    @carrera = carreras(:un_carrera)
    @carrera.codigo= 200
    carrera= @carrera
  		assert_not carrera.save
  end

  test 'no valid codigo' do
    @carrera = carreras(:un_carrera)
    @carrera.codigo= 200
    carrera= @carrera
    assert_not carrera.valid?
  end
end
