require 'test_helper'

class ProfesorGradoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#profesor_grados' do
      assert_equal 2, ProfesorGrado.count 
    end
end
