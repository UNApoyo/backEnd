require 'test_helper'

class GrupoInvestigacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#grupo_investigacion' do
      assert_equal 3, GrupoInvestigacion.count 
    end
end
