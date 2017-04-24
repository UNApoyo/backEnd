require 'test_helper'

class CarreraAsignaturaTest < ActiveSupport::TestCase

    test '#carrera_asignaturas' do
      assert_equal 2, CarreraAsignatura.count 
    end
end
