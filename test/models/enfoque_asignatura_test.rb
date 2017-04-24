require 'test_helper'

class EnfoqueAsignaturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#enfoque_asignaturas' do
      assert_equal 2, EnfoqueAsignatura.count 
    end
end
