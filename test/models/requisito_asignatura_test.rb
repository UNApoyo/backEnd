require 'test_helper'

class RequisitoAsignaturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#requisito_asignaturas' do
      assert_equal 2, RequisitoAsignatura.count 
    end
end
