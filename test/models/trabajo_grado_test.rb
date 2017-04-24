require 'test_helper'

class TrabajoGradoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#trabajo_grados' do
      assert_equal 3, TrabajoGrado.count 
    end
end
