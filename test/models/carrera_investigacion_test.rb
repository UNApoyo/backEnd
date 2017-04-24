require 'test_helper'

class CarreraInvestigacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#carrera_investigacions' do
      assert_equal 2, CarreraInvestigacion.count 
    end
end
