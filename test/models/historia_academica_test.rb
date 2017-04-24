require 'test_helper'

class HistoriaAcademicaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#historia_academicas' do
      assert_equal 3, HistoriaAcademica.count 
    end
end
