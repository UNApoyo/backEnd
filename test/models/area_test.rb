require 'test_helper'

class AreaTest < ActiveSupport::TestCase

  test '#areas' do
    assert_equal 3, Area.count
  end

  test 'of_asignatura' do
    Area.of_asignatura("Calculo",1,1)==("Matematicas")
  end

  test 'of_investigacion' do
    Area.of_investigacion(1,1,1)==("one")
  end

  test 'all_porcentaje_area' do
    Area.all_porcentaje_area(1,1)==(2)
  end

end
