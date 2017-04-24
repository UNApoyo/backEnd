require 'test_helper'

class ProfesorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#profesors' do
      assert_equal 3, Profesor.count 
    end
end
