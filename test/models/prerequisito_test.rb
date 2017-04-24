require 'test_helper'

class PrerequisitoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test '#prerequisitos' do
      assert_equal 2, Prerequisito.count 
    end
end
