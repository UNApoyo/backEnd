require 'test_helper'

class EnfoqueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save enfoque without carrera" do
    @enfoque = enfoques(:un_enfoque)
    @enfoque.carrera= nil
    enfoque = @enfoque
  	assert_not enfoque.save
  end
end
