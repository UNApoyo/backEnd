require 'test_helper'

class ProfesorInvestigacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#profesor_investigacions' do
      assert_equal 2, ProfesorInvestigacion.count 
    end
end
